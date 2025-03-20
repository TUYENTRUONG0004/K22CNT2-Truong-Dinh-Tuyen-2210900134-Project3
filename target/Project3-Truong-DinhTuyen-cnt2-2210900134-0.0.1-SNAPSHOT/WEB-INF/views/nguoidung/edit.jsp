<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Thông Tin Người Dùng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #17a2b8;
        }
        h2 {
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 15px;
            border: 1px solid #ddd;
            max-width: 400px;
            margin: 20px auto;  /* Canh giữa form: margin top/bottom 20px, auto left/right */
        }
        form div {
            margin-bottom: 10px;
        }
        label {
            display: inline-block;
            width: 100px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            padding: 8px 16px;
            background-color: #007bff;
            border: none;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Sửa Thông Tin Người Dùng</h2>
    <!-- Form submit dữ liệu đến /nguoidung/update bằng POST -->
    <form action="${pageContext.request.contextPath}/nguoidung/update" method="post">
        <!-- Ẩn ID người dùng -->
        <input type="hidden" name="tdt_MaNguoiDung" value="${nguoiDung.tdt_MaNguoiDung}" />
        <div>
            <label>Họ Tên:</label>
            <input type="text" name="tdt_HoTen" value="${nguoiDung.tdt_HoTen}" required="required"/>
        </div>
        <div>
            <label>Vai Trò:</label>
            <input type="text" name="tdt_VaiTro" value="${nguoiDung.tdt_VaiTro}" required="required"/>
        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="tdt_Email" value="${nguoiDung.tdt_Email}" required="required"/>
        </div>
        <div>
            <label>Mật Khẩu:</label>
            <input type="password" name="tdt_MatKhau" value="${nguoiDung.tdt_MatKhau}" required="required"/>
        </div>
        <div>
            <input type="submit" value="Cập nhật"/>
        </div>
    </form>
    <a href="${pageContext.request.contextPath}/nguoidung/list">Quay lại danh sách</a>
</body>
</html>
