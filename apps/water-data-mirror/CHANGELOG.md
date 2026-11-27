# CHANGELOG — Water Data Mirror

## 1.8.0 (20) — 2026-11-27

- Thêm option mỗi task **Không đồng bộ trong khung giờ** (vd 9:00–17:00, hỗ trợ khung qua nửa đêm như 22:00–06:00). Trong khung giờ đó mọi lượt tự động (realtime, mỗi X giờ, giờ cố định, idle, khởi động app) bị hoãn; hết khung giờ app chạy bù **một lượt** nếu có lượt bị hoãn. Nút **Đồng bộ ngay** vẫn chạy bình thường.
- Nút **Tạm dừng** trong menu thành menu con: **1 giờ, 3 giờ, 5 giờ, Hết hôm nay, Vĩnh viễn (tới khi bấm Tiếp tục)**. Tạm dừng có hạn tự tiếp tục; menu hiện **"Tạm dừng tới HH:mm"**, trạng thái task hiện "Khung giờ không đồng bộ — tới HH:mm" khi đang trong khung.
- `settings.json` cũ đọc được bình thường: khung giờ mặc định tắt, task đang tạm dừng giữ nguyên là tạm dừng vĩnh viễn.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-data-mirror-v1.8.0/water-data-mirror-1.8.0.zip

## 1.7.0 (19) — 2026-11-14

- Thêm **cập nhật một chạm** (Sparkle 2): mục **Kiểm tra cập nhật…** trong menu bar và nút cùng tên trong cửa sổ Cài đặt.
- Thêm công tắc **Tự kiểm tra cập nhật** (mặc định bật, kiểm tra mỗi ngày). Khi có bản mới, menu hiện **Có bản x.y.z · Cập nhật** thay vì bật cửa sổ đè lên công việc.
- Cập nhật chỉ thay app; không đụng tới task, `settings.json`, nhật ký, nguồn hay đích mirror.
- Version/build lấy từ một nguồn duy nhất là file `VERSION`; bản phát hành được build, ký và đăng tự động bằng GitHub Actions.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-data-mirror-v1.7.0/water-data-mirror-1.7.0.zip
