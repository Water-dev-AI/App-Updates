# CHANGELOG — SIMGLOBE QUẢN LÝ KINH DOANH

## 1.2.0 (build 4) — 2026-11-16

- **Giao diện mới, dễ theo dõi:** thông báo có nguồn rõ ràng và hiện đúng chỗ — không còn một dòng trạng thái chung lẫn giữa các trang.
- Thẻ **tiến trình đồng bộ** 5 bước (My Bill THẾ GIỚI → My Bill VIỆT NAM → Giá vốn → Doanh thu → So sánh năm), có thời gian chạy, nút Dừng và nút **Nhập CAPTCHA** khi cần. Sidebar hiện ô nhỏ "Đang đồng bộ…" để thấy từ mọi trang.
- **Dải trạng thái** dưới thanh lọc: kỳ **đã chốt** (xanh) / **đang diễn ra – nên đồng bộ lại** (cam) / **chưa có số liệu**, giờ lưu, cảnh báo **tỷ giá đã đổi**, nút Đồng bộ/Đồng bộ lại.
- Lỗi đồng bộ hiện thành thẻ đỏ **của đúng kỳ bị lỗi** (kèm bước lỗi, nút Thử lại). Lưu ý số liệu (thiếu tỷ giá, cảnh báo Bridge, doanh thu chưa ghép) gom vào một thẻ thu gọn.
- Thông báo nổi góc dưới phải, tự ẩn, ghi rõ nguồn ("Cài đặt · Đã lưu", "Đồng bộ · Xong T7/2026 [Xem]").
- Trang **Thông báo** (thay Nhật ký): lọc theo nguồn, màu theo mức độ, badge số lỗi chưa xem ở sidebar; vẫn xem được log file.
- Cài đặt: lỗi thiếu tài khoản/Bridge/Sheet hiện ngay tại thẻ liên quan. Cài đặt và Thông báo không còn thanh lọc số liệu.
- Bộ lọc **Kênh** chuyển lên thanh lọc chung (áp dụng cho mọi trang số liệu). Đồng bộ xong không tự nhảy trang.
- **Lưu số liệu theo kỳ:** mỗi kỳ đã đồng bộ được lưu riêng trên máy; đổi kỳ là xem ngay, không phải tải lại. Kỳ đã lưu có dấu ✓ trong danh sách tháng/quý/năm. Lần đầu mở bản này, app tự chuyển các số liệu cũ đã lưu sang cách lưu mới (không xoá file cũ).
- **Đồng bộ nhanh hơn:** số liệu so sánh cùng kỳ của các năm đã qua được lưu lại, lần sau không hỏi lại Bridge (menu cạnh nút Đồng bộ có "Tải mới toàn bộ" khi vừa sửa Sheet năm cũ).
- Rê chuột trên biểu đồ và sắp xếp bảng mượt hơn (không vẽ lại cả trang; định dạng số dùng chung).
- Không đổi cách tính số liệu, Bridge, tài khoản/Keychain hay cài đặt đã lưu.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/simglobe-business-v1.2.0/simglobe-business-1.2.0.zip

## 1.1.1 (build 3) — 2026-11-14

- Bản thử **cập nhật một chạm**: không đổi chức năng. Nếu bạn thấy thông báo này trong cửa sổ cập nhật, nghĩa là bấm **Cập nhật** đã hoạt động.
- Sau khi cập nhật, app mở lại và giữ nguyên tài khoản, mật khẩu Keychain, link Sheet, tỷ giá, snapshot và log.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/simglobe-business-v1.1.1/simglobe-business-1.1.1.zip

## 1.1.0 (build 2) — 2026-11-14

- Thêm **cập nhật một chạm**: Cài đặt → Phiên bản & cập nhật → **Kiểm tra cập nhật** (hoặc menu SIMGLOBE → Kiểm tra cập nhật…); app tự kiểm tra mỗi ngày, có thể tắt.
- Hiển thị phiên bản app ở sidebar, trang Cài đặt và cửa sổ Settings; khi có bản mới hiện nhãn **Có bản x.y.z · Cập nhật**.
- Cập nhật chỉ thay app; tài khoản, mật khẩu trong Keychain, link Sheet, tỷ giá, snapshot và log giữ nguyên.
- Bản phát hành build universal (Apple Silicon + Intel) trên GitHub Actions, ký bằng cùng chứng chỉ cục bộ như trước để Keychain không hỏi lại.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/simglobe-business-v1.1.0/simglobe-business-1.1.0.zip
