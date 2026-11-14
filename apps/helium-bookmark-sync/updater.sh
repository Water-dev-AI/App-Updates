#!/bin/bash
# Helium Bookmark Sync — updater. Chạy định kỳ (launchd trên macOS / systemd timer trên Linux):
# đọc latest.json trên GitHub, có bản mới thì tải zip, kiểm tra SHA-256, thay thư mục extension.
# Extension tự phát hiện file mới trên đĩa và tự nạp lại (chrome.runtime.reload).
# Tương thích bash 3.2 (macOS). Chỉ ghi trong thư mục cài đặt của chính nó.
set -eu

LATEST_URL="${HBS_LATEST_URL:-https://raw.githubusercontent.com/Water-dev-AI/App-Updates/main/apps/helium-bookmark-sync/latest.json}"
if [ "$(uname -s)" = "Darwin" ]; then
    DEFAULT_DIR="${HOME}/Library/Application Support/HeliumBookmarkSync"
else
    DEFAULT_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/helium-bookmark-sync"
fi
DIR="${HBS_DIR:-${DEFAULT_DIR}}"
EXT="${DIR}/extension"
LOG="${DIR}/updater.log"
mkdir -p "${DIR}"

log() {
    printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >> "${LOG}"
    [ -t 1 ] && printf '%s\n' "$*"
    return 0
}
trim_log() {
    if [ -f "${LOG}" ] && [ "$(wc -l < "${LOG}")" -gt 400 ]; then
        tail -n 200 "${LOG}" > "${LOG}.tmp" && mv "${LOG}.tmp" "${LOG}"
    fi
}
json_field() { # json_field <file> <key>  — latest.json/manifest.json: mỗi khoá một dòng
    sed -n "s/^[[:space:]]*\"$2\"[[:space:]]*:[[:space:]]*\"\\([^\"]*\\)\".*/\\1/p" "$1" | head -n 1
}
version_gt() { # version_gt a b → 0 nếu a > b
    local IFS=.
    # shellcheck disable=SC2206
    local a=($1) b=($2) i x y
    for i in 0 1 2 3; do
        x="${a[$i]:-0}"; y="${b[$i]:-0}"
        if [ "${x}" -gt "${y}" ] 2>/dev/null; then return 0; fi
        if [ "${x}" -lt "${y}" ] 2>/dev/null; then return 1; fi
    done
    return 1
}
sha256_of() {
    if command -v shasum >/dev/null 2>&1; then shasum -a 256 "$1" | awk '{print $1}'
    else sha256sum "$1" | awk '{print $1}'; fi
}

TMP="$(mktemp -d "${TMPDIR:-/tmp}/hbs-update.XXXXXX")"
cleanup() { rm -rf "${TMP}"; trim_log; }
trap cleanup EXIT

if ! curl -fsSL --retry 3 --max-time 60 -o "${TMP}/latest.json" "${LATEST_URL}?t=$(date +%s)"; then
    log "Không tải được latest.json (mất mạng?) — thử lại lần sau."
    exit 0
fi
NEW_VERSION="$(json_field "${TMP}/latest.json" version)"
ZIP_URL="$(json_field "${TMP}/latest.json" url)"
ZIP_SHA="$(json_field "${TMP}/latest.json" sha256)"
if [ -z "${NEW_VERSION}" ] || [ -z "${ZIP_URL}" ] || [ -z "${ZIP_SHA}" ]; then
    log "latest.json thiếu thông tin — bỏ qua."
    exit 1
fi
CUR_VERSION=""
[ -f "${EXT}/manifest.json" ] && CUR_VERSION="$(json_field "${EXT}/manifest.json" version)"

if [ -n "${CUR_VERSION}" ] && ! version_gt "${NEW_VERSION}" "${CUR_VERSION}"; then
    log "Đang dùng bản mới nhất ${CUR_VERSION}."
    exit 0
fi

log "Cập nhật ${CUR_VERSION:-(chưa cài)} → ${NEW_VERSION}"
curl -fsSL --retry 3 --max-time 300 -o "${TMP}/ext.zip" "${ZIP_URL}"
GOT_SHA="$(sha256_of "${TMP}/ext.zip")"
if [ "${GOT_SHA}" != "${ZIP_SHA}" ]; then
    log "SHA-256 không khớp (${GOT_SHA} ≠ ${ZIP_SHA}) — KHÔNG cài."
    exit 1
fi
mkdir -p "${TMP}/new"
unzip -q "${TMP}/ext.zip" -d "${TMP}/new"
if [ "$(json_field "${TMP}/new/manifest.json" version)" != "${NEW_VERSION}" ]; then
    log "manifest trong zip không đúng version ${NEW_VERSION} — KHÔNG cài."
    exit 1
fi

# Thay thư mục: chép bản mới cạnh bản cũ rồi đổi tên (nhanh, gần như nguyên tử).
rm -rf "${DIR}/extension.new" "${DIR}/extension.old"
cp -R "${TMP}/new" "${DIR}/extension.new"
if [ -d "${EXT}" ]; then mv "${EXT}" "${DIR}/extension.old"; fi
mv "${DIR}/extension.new" "${EXT}"
rm -rf "${DIR}/extension.old"
log "Đã cài ${NEW_VERSION} vào ${EXT}. Extension sẽ tự nạp lại trong vòng 30 phút (hoặc khi mở lại Helium)."
