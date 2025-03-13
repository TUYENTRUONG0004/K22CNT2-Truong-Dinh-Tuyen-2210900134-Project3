<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm Người Dùng</title>
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
         .btn {
            display: inline-block;
            padding: 8px 16px;
            background-color: #007bff; /* Màu nền */
            color: #fff;               /* Màu chữ */
            text-decoration: none;     /* Bỏ gạch chân */
            border-radius: 4px;        /* Bo góc */
            font-weight: bold;         /* Chữ đậm */
            margin-top: 10px;          /* Thêm khoảng cách trên */
        }
        .btn:hover {
            background-color: #0056b3; /* Đổi màu khi rê chuột */
        }
    </style>
</head>
<body>
    <h2>Thêm Người Dùng</h2>
    <!-- Form gửi dữ liệu tới /nguoidung/save bằng POST -->
    <form action="${pageContext.request.contextPath}/nguoidung/save" method="post">
        <div>
            <label>Họ Tên:</label>
            <input type="text" name="tdt_HoTen" required="required"/>
        </div>
        <div>
            <label>Vai Trò:</label>
            <input type="text" name="tdt_VaiTro" required="required"/>
        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="tdt_Email" required="required"/>
        </div>
        <div>
            <label>Mật Khẩu:</label>
            <input type="password" name="tdt_MatKhau" required="required"/>
        </div>
        <div>
            <input type="submit" value="Lưu"/>
        </div>
    </form>
    
    <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/nguoidung/list'">
    Quay lại danh sách
</button>
</body>
</html>
