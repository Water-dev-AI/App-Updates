# CHANGELOG — WorldMove Sync

## [1.21.0] - 2026-11-17

### Fixed

- CHECK XUẤT THIẾU: mã chỉ có ở **đơn eSIM trên website** (feed `source: "woo"`, ví dụ "T11 WEB (eSIM web)") mà chưa ghi vào sổ nay được **báo xuất thiếu**. Trước đây feed gộp đơn web vào danh sách mã nên app coi là "có trong sổ" (ví dụ `b0000262611150043` ngày 15/11). Mã có trong sổ (ZALO/TK1/TK2/WEB, CHỜ GIAO, TỒN KHO) vẫn tính như cũ, kể cả khi đồng thời có đơn web.
- Vị trí đơn web không còn tạo cảnh báo "đã hoàn còn trong sổ"; danh sách nguồn đã dò trong báo cáo không còn ghi nguồn chỉ-web.

### Notes

- Bridge v44 (bắt buộc cho CHECK XUẤT THIẾU). App tự cập nhật Bridge khi mở nếu đã bật tự cập nhật Bridge; nếu chưa, app báo cần deploy v44 trước khi chạy.
- Nên chạy lại CHECK XUẤT THIẾU các ngày gần đây để bắt các mã đã bị bỏ sót theo quy tắc cũ.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/worldmove-sync-v1.21.0/worldmove-sync-1.21.0.zip

## [1.20.0] - 2026-11-16

### Changed

- Giao diện làm việc mới, dễ theo dõi: mỗi thông báo gắn đúng một tab và chỉ hiện trong hộp của tab đó; mọi dòng thông báo có nhãn màu tên tab (ví dụ "Bảng giá › Gói THẾ GIỚI"). Daily Notice không còn gom thông báo APN; thông báo ESIM/SIM APN nằm ở tab ESIM APN/SIM APN.
- Thêm tab **Hộp thông báo** (đầu sidebar): toàn bộ thông báo của mọi tab, nhóm theo tab, có nút Mở tab và đánh dấu nhóm đã xử lý.
- Thanh trạng thái hiện ở mọi tab: đang chạy việc gì ở tab nào (kèm nút Mở tab và Dừng), tài khoản nào đang chờ CAPTCHA, tab khác còn bao nhiêu thông báo chờ.
- Mỗi tab có dòng "Trạng thái tab" riêng; trạng thái của tab này không còn bị tác vụ ở tab khác ghi đè. Banner "REALTIME · TOÀN APP" ở Cài đặt được thay bằng thanh trạng thái chung.
- Sidebar: huy hiệu số đếm theo mức (đỏ lỗi · cam cần xử lý · xanh dương đã tự cập nhật · xanh lá ổn), vòng quay ở tab đang chạy; dòng Bảng giá không kế thừa cảnh báo của các mục kiểm tra con.
- Thông báo macOS ghi thêm dòng tên tab sở hữu.

### Notes

- Không đổi logic đồng bộ, Bridge vẫn v43. Dữ liệu thông báo cũ giữ nguyên, chỉ đổi cách hiển thị.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/worldmove-sync-v1.20.0/worldmove-sync-1.20.0.zip

## [1.19.0] - 2026-11-14

### Added

- Cập nhật một chạm (Sparkle 2): nút **Kiểm tra cập nhật** ở sidebar, menu ứng dụng và trang Cài đặt chung; tự kiểm tra mỗi ngày (bật/tắt được). Khi có bản mới, sidebar hiện "Có bản x.y.z · Cập nhật".
- Version và build hiển thị trong sidebar và trang Cài đặt chung. Version lấy từ một nguồn duy nhất là file `VERSION`.

### Notes

- Cập nhật chỉ thay app trong Applications; tài khoản, vault bảo mật, cookie phiên FastMove, lịch sử, backup và cấu hình giữ nguyên. Bundle ID giữ `vn.worldmove.sync`.
- Không đổi logic đồng bộ, Bridge vẫn v43.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/worldmove-sync-v1.19.0/worldmove-sync-1.19.0.zip
