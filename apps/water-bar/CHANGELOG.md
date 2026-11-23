# CHANGELOG — Water Bar

## 1.4.1 (build 24) — 2026-11-23

- macOS 27: sửa lỗi lần thu gọn thứ hai đọc sai vị trí vạch │ nên không ẩn được gì.
- macOS 27: chờ lâu hơn với app trả lời chậm; nhật ký `hide27.txt` ghi đầy đủ danh sách icon ở lần thu gọn đầu tiên (để chẩn đoán).

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-bar-v1.4.1/water-bar-1.4.1.zip

## 1.4.0 (build 23) — 2026-11-23

- **Sửa lỗi macOS 27**: Water Bar ẩn được icon trở lại. macOS 27 không cho kéo dài vạch │ nữa, nên Water Bar dùng cơ chế giới hạn thanh menu có sẵn của macOS.
  - Cách dùng như cũ: ⌘-kéo icon sang bên trái vạch │ để ẩn, bấm 💧 để hiện/ẩn.
  - Ẩn theo **từng app** (app có icon nằm cả hai bên │ sẽ luôn hiện); icon hệ thống (Control Center, Wi-Fi, pin, đồng hồ…) luôn hiện.
  - Cần quyền **Trợ năng** và Water Bar phải nằm trong thư mục **Applications**. Lỗi bất kỳ → icon vẫn hiện đủ, ghi nhật ký `~/Library/Logs/WaterBar/hide27.txt`.
  - Trên macOS 27, icon không đủ chỗ được macOS gom vào nút » → Water Shelf tạm tắt.
- macOS 13–26: không thay đổi.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-bar-v1.4.0/water-bar-1.4.0.zip

## 1.3.1 (build 22) — 2026-11-14

- Bản thử nghiệm luồng **Cập nhật một chạm** từ 1.3.0: tải, kiểm tra chữ ký, thay app và mở lại.
- Không thay đổi chức năng; cài đặt, phím tắt và quyền Trợ năng / Ghi màn hình giữ nguyên.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-bar-v1.3.1/water-bar-1.3.1.zip

## 1.3.0 (build 21) — 2026-11-14

- **Cập nhật một chạm**: chuột phải giọt nước 💧 → **Kiểm tra cập nhật…**, hoặc nút **Kiểm tra cập nhật** trong Cài đặt. Có bản mới → tải, kiểm tra chữ ký, thay app và mở lại.
- Tự kiểm tra cập nhật mỗi ngày (bật/tắt trong Cài đặt). Có bản mới thì menu hiện **Có bản x.y.z · Cập nhật…**, không bật cửa sổ đè lên việc đang làm.
- Cài đặt, phím tắt và quyền Trợ năng / Ghi màn hình giữ nguyên sau khi cập nhật (bản phát hành ký bằng cùng chứng chỉ "Water Bar Local Signing").

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-bar-v1.3.0/water-bar-1.3.0.zip
