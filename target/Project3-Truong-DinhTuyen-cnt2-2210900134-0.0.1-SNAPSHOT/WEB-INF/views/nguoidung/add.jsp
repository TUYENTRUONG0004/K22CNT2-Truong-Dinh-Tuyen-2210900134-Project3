<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Thêm Người Dùng</title>
</head>
<body>
    <h1>Thêm Người Dùng</h1>
    <form th:action="@{/nguoidung/save}" method="post">
        <div>
            <label>Họ Tên:</label>
            <input type="text" name="tdt_HoTen" required/>
        </div>
        <div>
            <label>Vai Trò:</label>
            <input type="text" name="tdt_VaiTro" required/>
        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="tdt_Email" required/>
        </div>
        <div>
            <label>Mật Khẩu:</label>
            <input type="password" name="tdt_MatKhau" required/>
        </div>
        <div>
            <button type="submit">Lưu</button>
        </div>
    </form>
    <a th:href="@{/nguoidung/list}">Quay lại danh sách</a>
</body>
</html>
