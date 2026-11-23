# CHANGELOG — WorldMove Sync

## [1.23.1] - 2026-11-23

### Changed

- Bỏ hẳn khỏi sidebar nhóm Bảng giá / Gói THẾ GIỚI / Gói VIỆT NAM / Kiểm tra lệch giá / Dò gói thiếu / ESIM APN / SIM APN / APN BẢNG GIÁ (đã chuyển lên website). Sidebar chỉ còn Hộp thông báo, CHECK XUẤT THIẾU, Important/Daily Notice, chụp hóa đơn.
- App mở vào **Hộp thông báo** thay cho tab Bảng giá; mọi đường cũ dẫn tới tab Bảng giá/APN đều tự chuyển về Hộp thông báo. Hộp thông báo không còn nhóm/lọc của các tab đã bỏ.
- Vẫn chỉ đọc như 1.23.0. Code và dữ liệu cũ giữ nguyên (không xoá lịch sử/báo cáo trên máy).

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/worldmove-sync-v1.23.1/worldmove-sync-1.23.1.zip

## [1.23.0] - 2026-11-19

### Changed

- **App chỉ đọc:** dừng toàn bộ thao tác ghi lên Google Sheets và Google Apps Script. Mọi lệnh ghi gửi Bridge bị chặn ngay trước khi gửi (chỉ còn cho phép đối chiếu CHECK XUẤT THIẾU — đọc sổ/feed, báo cáo XLSX tạo trên máy). App không còn tự cập nhật / deploy Bridge; nút "Cập nhật Bridge ngay", "Kết nối Google", công tắc tự cập nhật và "Copy Bridge" bị khoá mờ.
- Bridge do website muaesim.com quản lý (đã lên v46). "Kiểm tra Bridge" vẫn đọc được phiên bản đang chạy; CHECK XUẤT THIẾU tương thích v46 (các hàm đối chiếu giống hệt v44).

### Kept

- Daily Notice, Important Notice, Return Order / CHECK XUẤT THIẾU, chụp bill (PDF trên máy), cập nhật một chạm, vault, backup.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/worldmove-sync-v1.23.0/worldmove-sync-1.23.0.zip

## [1.22.0] - 2026-11-18

Bản phát hành cuối của app (người dùng chốt 18/11/2026: Bảng giá + APN chuyển hẳn lên website muaesim.com).

### Changed

- **Bảng giá và APN đã chuyển lên website muaesim.com → Cài đặt.** App không còn tự chạy hay chạy tay: tải Bảng giá, ghi Sheets, kiểm tra lệch giá F/G, dò gói thiếu, APN BẢNG GIÁ, kiểm tra Gói THẾ GIỚI/VIỆT NAM, ESIM APN, SIM APN và dò tên file APN. Các tab cũ vẫn mở được để xem lịch sử/báo cáo; nút chạy bị khoá kèm ghi chú. Thông báo Bảng giá/APN còn chờ được chuyển sang "Đã xử lý" (không xoá).
- **Tự cập nhật Bridge lấy nguồn từ website** (`/wp-json/muaesim-ledger/v1/worldmove-bridge`, dùng cùng token feed CHECK XUẤT THIẾU). Chỉ deploy khi website trả ok, SHA-256 khớp, dòng 1 ghi đúng version và version lớn hơn Bridge đang chạy; không bao giờ deploy bản thấp hơn/bằng; lỗi thì không deploy. Không còn deploy file Bridge đóng gói trong app. Nút "Copy Bridge" cũng lấy từ website.
- Lịch tự động chỉ còn Important Notice, Daily Notice và CHECK XUẤT THIẾU.

### Kept

- Daily Notice, Important Notice, Return Order / CHECK XUẤT THIẾU, chụp bill, cập nhật một chạm (Sparkle), vault, backup.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/worldmove-sync-v1.22.0/worldmove-sync-1.22.0.zip

## [1.21.2] - 2026-11-18

### Changed

- Bảng giá: trạng thái tab hiện đúng bước đang chạy (ghi Sheets → kiểm tra lệch giá F/G → dò gói thiếu → chờ kiểm tra Gói THẾ GIỚI/VIỆT NAM). Trước đây app chỉ ghi "Đang thay dữ liệu đúng tab Google Sheets…" rồi im lặng suốt các bước sau nên trông như treo.
- Khi tab đang chạy, góc phải hiện "Bước này: X · Tổng: Y" (tự cập nhật; bước quá 5 phút tô cam) thay cho "X phút trước".
- Lịch sử Bảng giá ghi thời gian từng bước (tải, ghi Sheets, lệch giá, gói thiếu) để tìm bước chậm.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/worldmove-sync-v1.21.2/worldmove-sync-1.21.2.zip

## [1.21.1] - 2026-11-18

### Changed

- Chi tiết Daily Notice hiển thị giống bảng của hãng: hai cột (trái: ngày + tiêu đề, phải: nội dung), mỗi gói 【…】 một dòng, các nhóm "eSIM product :" / "eSIM 方案 :" tách riêng, mũi tên ⬇ màu xanh, ⬆ màu đỏ, dấu ❗ màu đỏ. Bỏ font máy chữ khó đọc; chi tiết của các thông báo khác cũng dùng chữ thường, giữ xuống dòng.
- Trích Daily Notice giữ nguyên xuống dòng của trang hãng. Thông báo cũ đã lưu (bị dồn một dòng) được tự tách lại khi hiển thị; không tạo thông báo trùng (so sánh vẫn theo ngày đăng).

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/worldmove-sync-v1.21.1/worldmove-sync-1.21.1.zip

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
