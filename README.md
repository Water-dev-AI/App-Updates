# App Updates

Kho phát hành bản cập nhật cho các app. **Chỉ chứa file phát hành** (bản build đã ký) và file mô tả bản mới nhất —
**không chứa source code**. Source code của app nằm trong repo private `Water-dev-AI/Claude-Project-all`
(`projects/<ten-app>/`).

## Cách hoạt động (update một chạm)

```
App trên máy người dùng ── hỏi ──▶ apps/<ten-app>/appcast.xml (hoặc latest.json)
                         ◀─ "có bản 1.2.0" ─
Người dùng bấm [Update] ── tải ──▶ GitHub Release  <ten-app>-v1.2.0  (file .zip/.dmg đã ký)
App kiểm tra chữ ký → thay bản cũ → mở lại. Dữ liệu người dùng giữ nguyên.
```

## Cấu trúc

```text
App-Updates/
├── AGENTS.md                 # Quy tắc cho AI khi phát hành
├── README.md
└── apps/
    ├── _template/            # Mẫu cho app mới
    │   ├── appcast.xml       # Dùng cho app macOS + Sparkle
    │   ├── latest.json       # Dùng cho Electron / Tauri / updater tự viết
    │   └── CHANGELOG.md
    └── <ten-app>/            # Mỗi app một thư mục
```

- File phát hành (`.zip`, `.dmg`, `.exe`…) **không commit vào Git** — đặt trong **GitHub Releases**, tag `<ten-app>-v<version>`,
  ví dụ `ghi-chu-nhanh-v1.2.0`.
- Đường dẫn app dùng để kiểm tra bản mới:
  `https://raw.githubusercontent.com/Water-dev-AI/App-Updates/main/apps/<ten-app>/appcast.xml`

## Phát hành bản mới (AI làm theo AGENTS.md)
1. Build + ký app (macOS: ký Developer ID + notarize, ký bản cập nhật bằng khoá EdDSA của Sparkle — khoá nằm trên máy Mac, **không** ở repo).
2. Tạo GitHub Release tag `<ten-app>-v<version>`, đính kèm file.
3. Thêm mục mới vào đầu `appcast.xml` / cập nhật `latest.json`, ghi `CHANGELOG.md` → commit → push.
4. Kiểm tra: mở app bản cũ → Check for Updates → thấy bản mới → cập nhật thành công, dữ liệu còn nguyên.

## Sao lưu
Repo này (kể cả file cài đặt trong Releases) được sao lưu tự động mỗi giờ sang Google Drive,
thư mục `GitHub-Backup/App-Updates/`. Script và hướng dẫn: `tools/google-drive-backup/` trong repo Claude-Project-all.

## Ứng dụng có trong repo

| App | Nền tảng | Version mới nhất | Kiểu updater |
|-----|----------|------------------|--------------|
| [water-notif](apps/water-notif/) | macOS 13+ (Apple Silicon) | 0.10.1 (26) | Sparkle 2 |
| [water-quick-copy](apps/water-quick-copy/) | macOS 13+ (Apple Silicon) | 1.1.0 (13) | Sparkle 2 |
| [water-data-mirror](apps/water-data-mirror/) | macOS 13+ (Apple Silicon + Intel) | 1.7.0 (19) | Sparkle 2 |
| [water-image-generator](apps/water-image-generator/) | macOS 14+ (Apple Silicon + Intel) | 2.9.0 (38) | Sparkle 2 |
| [water-tool-autopublisher](apps/water-tool-autopublisher/) | macOS 13+ (Apple Silicon + Intel) | 2.10.0 (45) | Sparkle 2 |
