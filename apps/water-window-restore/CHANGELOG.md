# CHANGELOG — WATER WINDOW RESTORE

## 0.1.2 (build 3) — 2026-11-28

- Kích thước mặc định của luật mới là "Giữ nguyên cỡ" (trước là Full). Luật đã có giữ nguyên như cũ.
  "Chụp bố cục" vẫn nhận ra cửa sổ đang đúng 1/2, 1/4, 1/3… ; không khớp mẫu nào → Giữ nguyên cỡ.
- Thêm ô "Tự tải bản cập nhật", bật sẵn: app tự tải bản mới và cài khi thoát app.
- Chạy ngầm (chọn trong bảng luật hoặc menu bar): dò app lệch luật mỗi 30 giây — chỉ đọc danh sách cửa sổ, không
  đụng chuột/phím. Hai chế độ: "chỉ báo app lệch" (menu bar hiện "N lệch") và "tự sửa khi rảnh tay" (mặc định: chỉ sửa
  khi không chạm chuột/phím ≥ 60 giây, bỏ qua app đang dùng, mỗi app tối đa 1 lần / 10 phút). Có thể tắt.
- Mở một app có luật → tự đưa app đó về chỗ sau ~3 giây (khi chạy ngầm đang bật).
- Máy thức dậy sau khi ngủ → tự khôi phục (theo ô "Tự khôi phục khi cắm màn hình / máy thức dậy").
- "Thêm app" lấy luôn vị trí hiện tại của app (màn hình, Desktop, kích thước) thay vì để mặc định.
- Mỗi dòng luật có nút 📷 "Lấy vị trí hiện tại" để cập nhật một app mà không phải chụp lại toàn bộ.
- "Giữ nguyên cỡ": cửa sổ đã nằm gọn trong màn hình đích thì để nguyên vị trí (trước đây bị kéo vào giữa).

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-window-restore-v0.1.2/water-window-restore-0.1.2.zip

## 0.1.1 (build 2) — 2026-11-28

- Sửa lỗi "Không điều khiển được cửa sổ" với cửa sổ đang bị app khác che (vd. nằm dưới Final Cut Pro): tìm cửa sổ thêm theo vị trí + kích thước khi app không trả số cửa sổ.
- Cửa sổ ở Desktop khác: dò lâu hơn một chút (tối đa 0,8 giây, chỉ khi cần) và thử lại sau khi đưa app lên trước.
- Cửa sổ phụ/ẩn của app (vd. cửa sổ thứ 2 của Photoshop) không còn báo lỗi — ghi "Bỏ qua cửa sổ phụ".
- Thông báo lỗi ghi rõ cửa sổ đang ở đâu và app đã thử những gì.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-window-restore-v0.1.1/water-window-restore-0.1.1.zip

## 0.1.0 (build 1) — 2026-11-28

- Bản đầu tiên: ghi nhớ mỗi app ở màn hình nào, Desktop thứ mấy, kích thước nào (Full, 1/2, 1/4, 1/3, 2/3, giữa, giữ nguyên).
- "Chụp bố cục hiện tại": tự tạo luật từ vị trí các cửa sổ ở mọi Desktop của mọi màn hình.
- "Khôi phục bố cục" một nút trên menu bar hoặc phím tắt ⌃⌥⌘R; app không có luật được để nguyên.
- Tự khôi phục khi cắm lại màn hình (chờ 6 giây cho macOS ổn định), có thể tắt.
- Báo kết quả từng app (đã về chỗ / lỗi và lý do).
- Mở cùng máy, cập nhật một chạm (Sparkle).

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/download/water-window-restore-v0.1.0/water-window-restore-0.1.0.zip
