# CHANGELOG — WATER QUICK COPY

## 1.1.0 (build 13) — 2026-11-14

### Cập nhật một chạm

- Thêm Sparkle 2.10.1: nút **Kiểm tra cập nhật** ở chân popover; khi lần kiểm tra tự động tìm thấy bản mới, nút đổi thành **Có bản x.y.z · Cập nhật**.
- Cài đặt có tuỳ chọn **Tự kiểm tra cập nhật (mỗi ngày)**, mặc định bật; Cài đặt hiện cả version và build.
- Bản cập nhật tải từ GitHub Releases của `Water-dev-AI/App-Updates`, kiểm tra chữ ký EdDSA rồi mới thay app; dữ liệu clipboard, ảnh, backup và cài đặt giữ nguyên.

### Quy trình

- Mã nguồn đưa lên GitHub (`projects/water-quick-copy`); version chỉ sửa ở file `VERSION`.
- GitHub Actions tự test/build trên macOS mỗi lần push và tự phát hành khi `VERSION` trên `main` có version mới.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-quick-copy-v1.1.0/water-quick-copy-1.1.0.zip
