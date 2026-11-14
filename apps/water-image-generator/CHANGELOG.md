# CHANGELOG — WATER IMAGE GENERATOR

## 2.10.0 (build 39) — 2026-11-14

- Sửa lỗi cài app sang máy khác (hoặc đặt app ở thư mục khác) thì mất prompt sẵn và không chạy được lô: prompt tạo ảnh và prompt sửa ảnh mặc định nay được đóng gói trong app. Khi `Workspace` chưa có `master-prompt.md`/`correction-prompt.md`, app tự tạo từ prompt mặc định.
- Thêm luật bắt buộc: **mọi lá cờ Trung Quốc trong ảnh phải úa màu, nhạt** (nền nâu đỏ xỉn, sao trắng ngà, không đỏ tươi/vàng tươi), áp dụng cho cả prompt tạo ảnh và prompt sửa ảnh.
- Prompt tùy chỉnh đang dùng không bị ghi đè: app chỉ nối thêm luật cờ Trung Quốc vào cuối một lần (nếu chưa có), sau khi sao lưu bản cũ thành `*.backup-<thời gian>.md` trong `Workspace`.
- Thêm nút **Mặc định** trong trình chỉnh sửa prompt để nạp lại prompt mặc định của app (chỉ ghi file khi bấm **Lưu prompt**).

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-image-generator-v2.10.0/water-image-generator-2.10.0.zip

## 2.9.0 (build 38) — 2026-11-14

- Thêm **cập nhật một chạm** (Sparkle 2): nút **Kiểm tra cập nhật** và công tắc **Tự kiểm tra cập nhật** ngay dưới tên app, mục **Kiểm tra cập nhật…** trong menu app. Khi có bản mới mà app đang làm việc nền, header hiện **Có bản x.y.z · Cập nhật** thay vì bật cửa sổ đè lên.
- Nút cập nhật bị khoá khi đang chạy lô, để việc cài bản mới (khởi động lại app) không cắt ngang shot.
- Cập nhật chỉ thay app; không đụng tới thư mục `Workspace` cạnh app (settings, prompt tùy chỉnh, run dở), phiên đăng nhập WebKit hay ảnh trong Downloads.
- Version/build lấy từ một nguồn duy nhất là file `VERSION`; bản phát hành được build Universal (Apple Silicon + Intel), ký và đăng tự động bằng GitHub Actions.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-image-generator-v2.9.0/water-image-generator-2.9.0.zip
