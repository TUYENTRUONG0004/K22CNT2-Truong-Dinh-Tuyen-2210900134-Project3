<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Thông Tin Phòng Học</title>
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
    <h1>Sửa Thông Tin Phòng Học</h1>
    <!-- Form gửi dữ liệu đến /phonghoc/update bằng POST -->
    <form action="${pageContext.request.contextPath}/phonghoc/update" method="post">
        <!-- Ẩn Mã Phòng để xác định bản ghi cần cập nhật -->
        <input type="hidden" name="tdt_MaPhong" value="${phong.tdt_MaPhong}" />
        
        <div>
            <label>Tên Phòng:</label>
            <input type="text" name="tdt_TenPhong" value="${phong.tdt_TenPhong}" required="required"/>
        </div>
        <div>
            <label>Loại Phòng:</label>
            <input type="text" name="tdt_LoaiPhong" value="${phong.tdt_LoaiPhong}"/>
        </div>
        <div>
            <label>Số Chỗ Ngồi:</label>
            <input type="number" name="tdt_SoChoNgoi" value="${phong.tdt_SoChoNgoi}"/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" value="${phong.tdt_TrangThai}"/>
        </div>
        <div>
            <label>Ghi Chú:</label>
            <textarea name="tdt_GhiChu">${phong.tdt_GhiChu}</textarea>
        </div>
        <div>
            <input type="submit" value="Cập nhật"/>
        </div>
    </form>
    <br/>
    <a href="${pageContext.request.contextPath}/phonghoc/list">Quay lại danh sách</a>
</body>
</html>
