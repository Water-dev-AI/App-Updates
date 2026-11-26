# CHANGELOG — WATER FCP BACKPORT

## 0.1.6 (build 7) — 2026-11-26

- Gửi thẳng qua mạng: mỗi máy có một **mã bí mật** (mục 4 trong app, nút "Copy mã"). Người gửi "Thêm máy…" bằng mã
  của máy nhận, kéo thả XML, bấm "Gửi cho …" — không cần tạo folder/zip.
- Máy nhận (đang mở app) kiểm tra gói mới mỗi 30 giây: hiện thông báo macOS, icon Dock nhảy + số gói, nút
  "📥 Nhận gói mới" nhấp nháy. Bấm vào → app tự tạo media 3s, Final Cut tạo library "WFB Settings".
- Gói được mã hoá (AES-GCM) bằng mã của máy nhận trước khi qua dịch vụ chuyển tin ntfy.sh; giữ khoảng 12 giờ.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-fcp-backport-v0.1.6/water-fcp-backport-0.1.6.zip

## 0.1.5 (build 6) — 2026-11-26

- "Nhận gói…": Final Cut tự tạo library trắng "WFB Settings" (~/Movies/WFB Settings.fcpbundle) chứa các clip 3s,
  không còn hỏi chọn library. Lần nhận sau thêm event mới vào cùng library đó. Library của editor không bị đụng tới.
  Editor mở library này cạnh library của mình → copy clip ⚙ → Paste Attributes.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-fcp-backport-v0.1.5/water-fcp-backport-0.1.5.zip

## 0.1.4 (build 5) — 2026-11-25

- Sửa giao diện: đổi lựa chọn đôi khi làm mất thanh nút trên cùng (Kiểm tra cập nhật / Nhận gói) và nút Tạo gói.
  Nay hai thanh này luôn cố định, phần giữa cuộn được.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-fcp-backport-v0.1.4/water-fcp-backport-0.1.4.zip

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
