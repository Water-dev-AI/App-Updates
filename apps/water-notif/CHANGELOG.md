# CHANGELOG — Water Notif

## 0.10.2 (build 27) — 2026-11-14

### Sửa lỗi

- Hộp thoại **Snooze tùy chọn X ngày** (và Nhập/Xuất backup) không còn bị bảng menu bar che phía trên: app tạm đóng bảng khi mở hộp thoại, hộp thoại hiện ở giữa màn hình và nhận gõ ngay; đóng hộp thoại xong bảng tự mở lại.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-notif-v0.10.2/water-notif-0.10.2.zip

## 0.10.1 (build 26) — 2026-11-13

### Thử nghiệm cập nhật một chạm

- Bản phát hành thử để kiểm tra luồng **Kiểm tra cập nhật** từ 0.10.0: tải, kiểm tra chữ ký, thay app và mở lại.
- Không thay đổi chức năng; dữ liệu task, settings và quyền giữ nguyên.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-notif-v0.10.1/water-notif-0.10.1.zip

## 0.10.0 (build 25) — 2026-11-13

### Cập nhật một chạm

- Thêm Sparkle 2.10.1: nút **Kiểm tra cập nhật** cạnh số phiên bản ở chân dashboard và trong menu **Quyền**; bật/tắt **Tự kiểm tra cập nhật** (mặc định kiểm tra mỗi ngày).
- Khi lần kiểm tra tự động tìm thấy bản mới, chân dashboard hiện **Có bản x.y.z · Cập nhật** thay vì bật cửa sổ đè lên công việc.
- Bản cập nhật được tải từ GitHub Releases của repo `Water-dev-AI/App-Updates`, kiểm tra chữ ký EdDSA rồi mới thay app; dữ liệu `tasks.json`, settings và quyền không bị xóa.

### Quy trình

- Mã nguồn chuyển lên GitHub (`Water-dev-AI/Claude-Project-all/projects/water-notif`), giữ nguyên lịch sử Git cũ.
- GitHub Actions tự test/build trên macOS cho mỗi lần push, và tự phát hành khi `VERSION` trên `main` có version mới.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-notif-v0.10.0/water-notif-0.10.0.zip
