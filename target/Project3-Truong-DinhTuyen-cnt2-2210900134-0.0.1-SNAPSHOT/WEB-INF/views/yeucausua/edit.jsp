<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Yêu Cầu Sửa</title>
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
        input[type="number"],
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
    </style>
</head>
<body>
    <h1>Sửa Yêu Cầu Sửa</h1>
    <form action="${pageContext.request.contextPath}/yeucausua/update" method="post">
        <!-- Ẩn mã yêu cầu -->
        <input type="hidden" name="tdt_MaYeuCau" value="${yeuCau.tdt_MaYeuCau}" />
        
        <div>
            <label>Mô Tả:</label>
            <textarea name="tdt_MoTa" required="required">${yeuCau.tdt_MoTa}</textarea>
        </div>
        <div>
            <label>Mã Thiết Bị:</label>
            <input type="text" name="tdt_MaThietBi" value="${yeuCau.tdt_MaThietBi}"/>
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong" value="${yeuCau.tdt_MaPhong}"/>
        </div>
        <div>
            <label>Mã Người Dùng:</label>
            <input type="number" name="tdt_MaNguoiDung" value="${yeuCau.tdt_MaNguoiDung}" required="required"/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" value="${yeuCau.tdt_TrangThai}"/>
        </div>
        <div>
            <label>Ngày Gửi:</label>
            <input type="text" name="tdt_NgayGui" value="${yeuCau.tdt_NgayGui}" required="required"/>
        </div>
        <div>
            <label>Ngày Xử Lý:</label>
            <input type="text" name="tdt_NgayXuLy" value="${yeuCau.tdt_NgayXuLy}"/>
        </div>
        <div>
            <input type="submit" value="Cập nhật"/>
        </div>
    </form>
    <br/>
    <a href="${pageContext.request.contextPath}/yeucausua/list">Quay lại danh sách</a>
</body>
</html>
