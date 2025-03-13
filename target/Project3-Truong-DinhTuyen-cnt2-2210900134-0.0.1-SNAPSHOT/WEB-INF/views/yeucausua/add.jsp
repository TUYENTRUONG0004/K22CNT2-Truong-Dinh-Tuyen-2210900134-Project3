<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Thêm Yêu Cầu Sửa</title>
</head>
<body>
    <h1>Thêm Yêu Cầu Sửa</h1>
    <form th:action="@{/yeucausua/save}" method="post">
        <div>
            <label>Mã Yêu Cầu:</label>
            <input type="text" name="tdt_MaYeuCau" required/>
        </div>
        <div>
            <label>Mô Tả:</label>
            <textarea name="tdt_MoTa" required></textarea>
        </div>
        <div>
            <label>Mã Thiết Bị:</label>
            <input type="text" name="tdt_MaThietBi"/>
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong"/>
        </div>
        <div>
            <label>Mã Người Dùng:</label>
            <input type="number" name="tdt_MaNguoiDung" required/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" value="Đang chờ"/>
        </div>
        <div>
            <label>Ngày Gửi:</label>
            <input type="date" name="tdt_NgayGui" required/>
        </div>
        <div>
            <label>Ngày Xử Lý:</label>
            <input type="date" name="tdt_NgayXuLy"/>
        </div>
        <div>
            <button type="submit">Lưu</button>
        </div>
    </form>
    <a th:href="@{/yeucausua/list}">Quay lại danh sách</a>
</body>
</html>
