<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm Thiết Bị</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #17a2b8;
        }
        h1 {
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
            width: 120px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="date"],
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
    <h1>Thêm Thiết Bị</h1>
   <form action="${pageContext.request.contextPath}/thietbi/save" method="post">
    <div>
        <label>Mã Thiết Bị:</label>
        <input type="text" name="tdt_MaThietBi" required="required"/>
    </div>
    <div>
        <label>Tên Thiết Bị:</label>
        <input type="text" name="tdt_TenThietBi" required="required"/>
    </div>
    <div>
        <label>Loại Thiết Bị:</label>
        <input type="text" name="tdt_LoaiThietBi"/>
    </div>
    <div>
        <label>Mã Phòng:</label>
        <input type="text" name="tdt_MaPhong"/>
    </div>
    <div>
        <label>Ngày Mua:</label>
        <input type="date" name="tdt_NgayMua" required="required"/>
    </div>
    <div>
        <label>Trạng Thái:</label>
        <input type="text" name="tdt_TrangThai" value="Đang chờ"/>
    </div>
    <div>
        <label>Ghi Chú:</label>
        <textarea name="tdt_GhiChu"></textarea>
    </div>
    <div>
        <input type="submit" value="Lưu"/>
    </div>
</form>
    <br/>

    <button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath}/thietbi/list'">
Quay lại danh sách</button>
</body>
</html>
