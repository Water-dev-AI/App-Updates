# CHANGELOG — WATER IMAGE GENERATOR

## 2.12.1 (build 43) — 2026-11-22

- **Sửa lỗi gấp: ChatGPT đã trả ảnh nhưng app báo "không trả ảnh sau 2 lần gửi".** Nguyên nhân: prompt mặc định 2.12.0 dài hơn ~1 700 ký tự, đẩy prompt gửi đi (kèm đoạn tin và ngữ cảnh liền kề) vượt khoảng 8 000 ký tự. Với tin nhắn dài như vậy ChatGPT thu gọn nội dung, app không nhận ra tin nhắn vừa gửi nên không ghép được ảnh (log: mọi prompt ≥ 8 083 ký tự đều kẹt "Chờ ChatGPT xác nhận yêu cầu", prompt ≤ 7 832 ký tự chạy bình thường).
- Rút gọn prompt mặc định (vẫn bắt buộc ảnh thật, cấm tranh vẽ/hoạt hình/vector/icon). Máy đang dùng prompt mặc định 2.12.0 được tự cập nhật; máy có prompt tự sửa được hỏi giữ hay dùng bản mới.
- Prompt gửi đi luôn ≤ 7 000 ký tự: nếu dài hơn, app bớt dần số shot trước/sau trong ngữ cảnh liền kề (không cắt đoạn tin hay prompt của bạn). Log ghi độ dài prompt mỗi lần gửi và cảnh báo nếu prompt tự sửa vẫn quá dài.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/tag/water-image-generator-v2.12.1

## 2.12.0 (build 42) — 2026-11-19

- **Prompt mặc định chuyển sang ảnh thật:** ảnh minh họa phải là ảnh chụp / ảnh ghép báo chí photorealistic (chân dung người thật tả thực, bối cảnh và vật thể biểu tượng như ảnh chụp, ghép lớp mềm). Cấm tranh vẽ, minh họa vẽ tay, hoạt hình, cartoon, comic, anime, vector, flat design, line art, icon phẳng, bong bóng thoại. Ý tưởng trừu tượng (AI, tăng trưởng, rủi ro, pháp lý) thể hiện bằng vật thể thật thay vì icon. Prompt sửa ảnh chuyển ảnh dạng vẽ sang ảnh thật, giữ bố cục và số liệu đúng.
- **Thông báo khi prompt mặc định có bản mới:** máy đang dùng prompt mặc định (chưa tự sửa) được cập nhật luôn. Máy có prompt **tự sửa** sẽ hiện thông báo cho chọn **Giữ prompt của tôi** (không đổi gì) hoặc **Dùng prompt mặc định mới** (prompt cũ được sao lưu thành `*.backup-<thời gian>.md` trong `Workspace`). Chỉ hỏi một lần cho mỗi lần prompt mặc định thay đổi; đổi lại sau bằng nút **Mặc định**.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/tag/water-image-generator-v2.12.0

## 2.11.0 (build 41) — 2026-11-16

- **Sửa QC đánh trượt nhầm ảnh lượt đầu có số liệu đúng.** Nguyên nhân: QC so số theo chuỗi ký tự (`12,300` ≠ `12.300`, `42 600` bị tách đôi, `15%` ≠ "15 phần trăm", `12,3 nghìn tỷ` ≠ `12.300 tỷ`), coi nhãn đơn vị nhỏ cạnh số lớn là "chữ quá nhỏ", tính cả "tỷ/đồng" vào ngân sách 6 từ, so từ khoá có dấu sai (chữ "đ"). Báo lỗi đó khiến prompt sửa ảnh xoá luôn số — ảnh không chữ qua mọi kiểm tra OCR nên lại "đạt".
- QC nay so số theo giá trị, bỏ qua nhiễu OCR một chữ số, không tính đơn vị vào ngân sách nhãn, chỉ đánh lỗi chữ thật sự li ti, và **thêm kiểm tra "Có số liệu cốt lõi"**: đoạn tin có dữ liệu định lượng mà ảnh bị xoá hết số thì không còn được tính là đạt.
- Prompt sửa ảnh thêm luật **GIỮ NGUYÊN SỐ LIỆU ĐÚNG**: lỗi lề/vùng nguồn/cỡ chữ thì dời hoặc phóng to, không xoá số. Prompt tùy chỉnh đang dùng được nối luật này một lần (có sao lưu bản cũ).
- **AI dự phòng khi tạo ảnh thất bại** (mặc định **Gemini**, chọn được ChatGPT/Gemini/Grok hoặc Không dùng trong Thiết lập): shot mà AI chính không trả ảnh sau số lần thử sẽ được làm tiếp bằng AI dự phòng ở vòng chạy lại, luân phiên giữa hai AI tới khi có ảnh hoặc bấm Dừng. Shot bị AI chính từ chối vì chính sách cũng được thử một lần bằng AI dự phòng; cả hai cùng từ chối mới bỏ qua.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/tag/water-image-generator-v2.11.0

## 2.10.1 (build 40) — 2026-11-14

- Mỗi lần phát hành nay có **2 bản**: bản chính cho **macOS 14+** và bản **macOS 12+** cho máy cũ (đều chạy Apple Silicon + Intel), cùng nội dung và cùng version.
- Bản macOS 12+ cũng có **cập nhật một chạm** (nút Kiểm tra cập nhật) qua feed riêng, nên chỉ nhận bản macOS 12+, không bị đẩy sang bản macOS 14+.
- Gồm toàn bộ thay đổi của 2.10.0: prompt mặc định có sẵn trong app (cài sang máy khác không còn mất prompt) và luật cờ Trung Quốc úa màu, nhạt.

Tải về: https://github.com/Water-dev-AI/App-Updates/releases/tag/water-image-generator-v2.10.1

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
