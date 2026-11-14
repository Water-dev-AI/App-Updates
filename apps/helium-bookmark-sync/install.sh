#!/bin/bash
# Cài Helium Bookmark Sync + updater tự động (macOS / Linux). Chạy một lần trên mỗi máy:
#   curl -fsSL https://raw.githubusercontent.com/Water-dev-AI/App-Updates/main/apps/helium-bookmark-sync/install.sh | bash
# Gỡ: chạy lại với tham số --uninstall (chỉ gỡ updater + thư mục cài; bookmark và dữ liệu trên GitHub giữ nguyên).
set -eu

BASE_URL="${HBS_BASE_URL:-https://raw.githubusercontent.com/Water-dev-AI/App-Updates/main/apps/helium-bookmark-sync}"
LABEL="com.water-dev-ai.helium-bookmark-sync.updater"
OS="$(uname -s)"
if [ "${OS}" = "Darwin" ]; then
    DIR="${HOME}/Library/Application Support/HeliumBookmarkSync"
else
    DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/helium-bookmark-sync"
fi
PLIST="${HOME}/Library/LaunchAgents/${LABEL}.plist"
UNIT_DIR="${XDG_CONFIG_HOME:-${HOME}/.config}/systemd/user"

if [ "${1:-}" = "--uninstall" ]; then
    if [ "${OS}" = "Darwin" ]; then
        launchctl bootout "gui/$(id -u)" "${PLIST}" 2>/dev/null || true
        rm -f "${PLIST}"
    else
        systemctl --user disable --now helium-bookmark-sync-updater.timer 2>/dev/null || true
        rm -f "${UNIT_DIR}/helium-bookmark-sync-updater.service" "${UNIT_DIR}/helium-bookmark-sync-updater.timer"
    fi
    echo "Đã gỡ updater. Thư mục extension vẫn ở: ${DIR} (xoá tay nếu muốn, sau khi Remove extension trong Helium)."
    exit 0
fi

mkdir -p "${DIR}"
echo "→ Tải updater…"
curl -fsSL --retry 3 -o "${DIR}/updater.sh.tmp" "${BASE_URL}/updater.sh?t=$(date +%s)"
mv "${DIR}/updater.sh.tmp" "${DIR}/updater.sh"
chmod 755 "${DIR}/updater.sh"

echo "→ Tải extension bản mới nhất…"
HBS_DIR="${DIR}" /bin/bash "${DIR}/updater.sh"
test -f "${DIR}/extension/manifest.json"

if [ "${OS}" = "Darwin" ]; then
    mkdir -p "${HOME}/Library/LaunchAgents"
    cat > "${PLIST}" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>Label</key><string>${LABEL}</string>
  <key>ProgramArguments</key>
  <array><string>/bin/bash</string><string>${DIR}/updater.sh</string></array>
  <key>RunAtLoad</key><true/>
  <key>StartInterval</key><integer>3600</integer>
  <key>StandardOutPath</key><string>/dev/null</string>
  <key>StandardErrorPath</key><string>${DIR}/updater.err.log</string>
</dict>
</plist>
EOF
    launchctl bootout "gui/$(id -u)" "${PLIST}" 2>/dev/null || true
    launchctl bootstrap "gui/$(id -u)" "${PLIST}"
    printf '%s' "${DIR}/extension" | pbcopy 2>/dev/null || true
    SCHED="launchd (mỗi giờ + khi đăng nhập)"
else
    if command -v systemctl >/dev/null 2>&1 && systemctl --user show-environment >/dev/null 2>&1; then
        mkdir -p "${UNIT_DIR}"
        cat > "${UNIT_DIR}/helium-bookmark-sync-updater.service" <<EOF
[Unit]
Description=Helium Bookmark Sync updater
[Service]
Type=oneshot
ExecStart=/bin/bash "${DIR}/updater.sh"
EOF
        cat > "${UNIT_DIR}/helium-bookmark-sync-updater.timer" <<EOF
[Unit]
Description=Helium Bookmark Sync updater (mỗi giờ)
[Timer]
OnBootSec=2min
OnUnitActiveSec=1h
Persistent=true
[Install]
WantedBy=timers.target
EOF
        systemctl --user daemon-reload
        systemctl --user enable --now helium-bookmark-sync-updater.timer
        SCHED="systemd --user timer (mỗi giờ)"
    else
        SCHED="CHƯA đặt lịch — thêm vào crontab: 17 * * * * /bin/bash \"${DIR}/updater.sh\""
    fi
fi

cat <<EOF

✅ Đã cài. Thư mục extension: ${DIR}/extension
   Updater: ${SCHED}

Bước cuối (chỉ một lần trên máy này):
  1. Mở Helium → gõ vào thanh địa chỉ: chrome://extensions
  2. Bật "Developer mode" (góc trên bên phải).
  3. Bấm "Load unpacked" → chọn thư mục trên.
EOF
if [ "${OS}" = "Darwin" ]; then
    echo "     (Đường dẫn đã được copy: trong hộp chọn thư mục bấm Cmd+Shift+G rồi Cmd+V, Enter.)"
fi
cat <<EOF
  4. Bấm icon Bookmark Sync → Cài đặt → nhập repo GitHub private + token (giống nhau trên mọi máy).
EOF
