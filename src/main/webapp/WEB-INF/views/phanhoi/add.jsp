<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm Phản Hồi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #17a2b8;
        }
        h1 { color: #333; }
        form {
            background-color: #fff;
            padding: 15px;
            border: 1px solid #ddd;
            max-width: 400px;
            margin: 20px auto;  /* Canh giữa form: margin top/bottom 20px, auto left/right */
        }
        form div { margin-bottom: 10px; }
        label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }
        input[type="text"],
        textarea {
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
        input[type="submit"]:hover { background-color: #0056b3; }
        a { text-decoration: none; color: #007bff; }
        a:hover { text-decoration: underline; }
        
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
    <h1>Phản Hồi</h1>
    <form action="${pageContext.request.contextPath}/phanhoi/save" method="post">
        <div>
            <label>Mã Sinh Viên:</label>
            <input type="text" name="tdt_MaPhanHoi" required="required"/>
        </div>
        <div>
            <label>Thứ Muốn Phản Hồi:</label>
            <!-- Chỉ cho phép "Thiết bị", "Phòng học", "Góp Ý" -->
            <input type="text" name="tdt_LoaiPhanHoi" required="required" placeholder="Ví dụ: Thiết bị"/>
        </div>
        <div>
            <label>Nội dung phản hồi:</label>
            <textarea name="tdt_MoTa" required="required"></textarea>
        </div>
        <div>
            <input type="submit" value="Lưu"/>
        </div>
    </form>
    <br/>
    <a href="${pageContext.request.contextPath}/phanhoi/list" class="btn">Xem các phản hồi</a>
</body>
</html>
