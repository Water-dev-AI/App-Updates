# CHANGELOG — WATER FCP BACKPORT

## 0.1.3 (build 4) — 2026-11-25

- Sửa cảnh báo "Could not parse DTD" khi kiểm tra file: DTD của Final Cut gọi file phụ, mà đường dẫn
  "Final Cut Pro.app" có dấu cách → nay chép DTD sang thư mục tạm trước khi kiểm tra.
- Đọc được DTD có file phụ (SYSTEM entity) khi hạ version.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-fcp-backport-v0.1.3/water-fcp-backport-0.1.3.zip

## 0.1.2 (build 3) — 2026-11-25

- Sửa lỗi Final Cut báo "DTD version is not recognized": khi bấm "Nhận gói…", app đọc Final Cut trên máy nhận,
  nếu file mới hơn mức máy đó đọc được thì tự hạ xuống đúng mức rồi mới mở (file gốc giữ nguyên).
- Nhật ký hiện bản Final Cut trên máy và version FCPXML tối đa nó đọc được.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-fcp-backport-v0.1.2/water-fcp-backport-0.1.2.zip

## 0.1.1 (build 2) — 2026-11-25

- Icon ứng dụng mới.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-fcp-backport-v0.1.1/water-fcp-backport-0.1.1.zip

## 0.1.0 (build 1) — 2026-11-25

- Bản đầu: hạ version FCPXML theo DTD của bản FCP đích (đọc trong Final Cut Pro.app), kiểm tra bằng xmllint.
- Gói setting 3 giây (video + audio) để Copy → Paste Attributes; đóng gói thư mục + zip + hướng dẫn.
- Hạ version toàn bộ XML; bên nhận đặt media đúng chỗ và mở trong FCP; liệt kê plugin cần cài.
- Cập nhật một chạm (Sparkle): nút "Kiểm tra cập nhật", tự kiểm tra mỗi ngày.
- Bản universal (Intel + Apple Silicon), macOS 12+.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-fcp-backport-v0.1.0/water-fcp-backport-0.1.0.zip
