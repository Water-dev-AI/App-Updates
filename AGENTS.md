# AGENTS.md — Repo phát hành bản cập nhật

Repo này **chỉ** dùng để phát hành bản cập nhật. Quy trình chung: `AI_APP_WORKFLOW_MASTER_GITHUB.md`
trong repo `Water-dev-AI/Claude-Project-all`. Trả lời người dùng bằng tiếng Việt.

## Được để trong repo
- `apps/<ten-app>/appcast.xml`, `latest.json`, `CHANGELOG.md`, ghi chú phát hành.
- File phát hành (.zip/.dmg/.exe) → **GitHub Releases**, không commit vào Git.

## Tuyệt đối không
- Không commit source code, `.env`, token, mật khẩu.
- **Không bao giờ** đưa khoá ký Sparkle EdDSA (private key), chứng chỉ Developer ID (.p12) hay mật khẩu notarize vào repo,
  Release, log hoặc chat. Mất khoá = không phát hành cập nhật được nữa; lộ khoá = kẻ xấu đẩy được bản độc hại.
- Không xoá, sửa, hay thay file của Release đã phát hành; không xoá tag; không force push — trừ khi người dùng xác nhận cụ thể.
  Bản lỗi → phát hành bản mới với version cao hơn.
- Không đăng bản chưa build/ký/kiểm tra thành công. Không ghi vào appcast/latest.json trước khi file Release đã tải lên xong.

## Quy tắc phát hành
1. Version `MAJOR.MINOR.PATCH`, phải **cao hơn** bản đang có; build number tăng dần. Khớp với version hiển thị trong app.
2. Tag Release: `<ten-app>-v<version>`. Tên file: `<ten-app>-<version>.<ext>`.
3. Thứ tự: tạo Release + tải file → kiểm tra link tải được → cập nhật appcast.xml/latest.json (bản mới nhất ở trên cùng)
   với đúng `length`/`sha256`/chữ ký → cập nhật CHANGELOG + bảng trong README → commit `[<ten-app>] Phát hành v<version>` → push.
4. Báo cáo: version, link Release, đã kiểm tra cập nhật từ bản cũ chưa (chưa thì nói rõ).
5. Ghi lại phát hành vào `docs/CHANGELOG.md` + `docs/PROGRESS.md` của project trong repo Claude-Project-all.

## Thêm app mới
Copy `apps/_template` → `apps/<ten-app>` (cùng tên với `projects/<ten-app>` bên Claude-Project-all), sửa tên app, thêm dòng vào bảng README.
