# CHANGELOG — WATER QUICK COPY

## 1.2.1 (build 15) — 2026-11-26

### Sửa lỗi

- Bỏ tooltip "WATER QUICK COPY" hiện treo mãi khi rê chuột vào icon menu bar trên macOS mới. VoiceOver vẫn đọc tên app.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-quick-copy-v1.2.1/water-quick-copy-1.2.1.zip

## 1.2.0 (build 14) — 2026-11-16

### Mượt hơn

- Ảnh hiển thị bằng thumbnail thu nhỏ, tạo ở nền và lưu đệm — không còn nạp nguyên ảnh gốc mỗi lần vẽ lại. Kéo đổi vị trí/xoá ảnh nhanh hơn khoảng 30–60 lần.
- Danh sách chỉ dựng lại đúng thẻ vừa thay đổi; mở chi tiết, kéo đổi vị trí, thêm mới và tìm kiếm nhanh hơn khoảng 6–12 lần khi có nhiều mục.
- Lưu dữ liệu chạy nền, thao tác không bị khựng khi lưu.

### Tiện hơn

- Xoá nhầm? Bấm **Hoàn tác** ở chân popover trong 6 giây.
- Bấm copy hiện dấu ✓ xanh; thẻ đổi màu khi rê chuột; tiêu đề hiện số mục.
- Phím tắt: **⌘F** tìm kiếm, **⌘N** thêm clipboard, **⌘,** Cài đặt. Trong ô tìm kiếm: **Enter** copy kết quả đầu và đóng popover để dán ngay, **Esc** xoá/đóng tìm kiếm.
- Bấm đúp thumbnail để mở ảnh.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-quick-copy-v1.2.0/water-quick-copy-1.2.0.zip

## 1.1.0 (build 13) — 2026-11-14

### Cập nhật một chạm

- Thêm Sparkle 2.10.1: nút **Kiểm tra cập nhật** ở chân popover; khi lần kiểm tra tự động tìm thấy bản mới, nút đổi thành **Có bản x.y.z · Cập nhật**.
- Cài đặt có tuỳ chọn **Tự kiểm tra cập nhật (mỗi ngày)**, mặc định bật; Cài đặt hiện cả version và build.
- Bản cập nhật tải từ GitHub Releases của `Water-dev-AI/App-Updates`, kiểm tra chữ ký EdDSA rồi mới thay app; dữ liệu clipboard, ảnh, backup và cài đặt giữ nguyên.

### Quy trình

- Mã nguồn đưa lên GitHub (`projects/water-quick-copy`); version chỉ sửa ở file `VERSION`.
- GitHub Actions tự test/build trên macOS mỗi lần push và tự phát hành khi `VERSION` trên `main` có version mới.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-quick-copy-v1.1.0/water-quick-copy-1.1.0.zip
