<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Sửa Người Dùng</title>
</head>
<body>
    <h1>Sửa Thông Tin Người Dùng</h1>
    <form th:action="@{/nguoidung/update}" method="post">
        <!-- Ẩn ID người dùng -->
        <input type="hidden" name="tdt_MaNguoiDung" th:value="${nguoiDung.tdt_MaNguoiDung}" />
        <div>
            <label>Họ Tên:</label>
            <input type="text" name="tdt_HoTen" th:value="${nguoiDung.tdt_HoTen}" required/>
        </div>
        <div>
            <label>Vai Trò:</label>
            <input type="text" name="tdt_VaiTro" th:value="${nguoiDung.tdt_VaiTro}" required/>
        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="tdt_Email" th:value="${nguoiDung.tdt_Email}" required/>
        </div>
        <div>
            <label>Mật Khẩu:</label>
            <input type="password" name="tdt_MatKhau" th:value="${nguoiDung.tdt_MatKhau}" required/>
        </div>
        <div>
            <button type="submit">Cập nhật</button>
        </div>
    </form>
    <a th:href="@{/nguoidung/list}">Quay lại danh sách</a>
</body>
</html>
