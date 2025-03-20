<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Thiết Bị</title>
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
    </style>
</head>
<body>
    <h1>Sửa Thiết Bị</h1>
    <form action="${pageContext.request.contextPath}/thietbi/update" method="post">
        <!-- Ẩn mã thiết bị -->
        <input type="hidden" name="tdt_MaThietBi" value="${thietBi.tdt_MaThietBi}" />

        <div>
            <label>Tên Thiết Bị:</label>
            <input type="text" name="tdt_TenThietBi" value="${thietBi.tdt_TenThietBi}" required="required"/>
        </div>
        <div>
            <label>Loại Thiết Bị:</label>
            <input type="text" name="tdt_LoaiThietBi" value="${thietBi.tdt_LoaiThietBi}"/>
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong" value="${thietBi.tdt_MaPhong}"/>
        </div>
        <div>
            <label>Ngày Mua:</label>
            <!-- Nếu bạn muốn hiển thị ngày mua, cần đảm bảo format hợp lệ (yyyy-MM-dd) -->
            <input type="date" name="tdt_NgayMua" value="${thietBi.tdt_NgayMua}"/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" value="${thietBi.tdt_TrangThai}"/>
        </div>
        <div>
            <label>Ghi Chú:</label>
            <textarea name="tdt_GhiChu">${thietBi.tdt_GhiChu}</textarea>
        </div>
        <div>
            <input type="submit" value="Cập nhật"/>
        </div>
    </form>
    <br/>
    <a href="${pageContext.request.contextPath}/thietbi/list">Quay lại danh sách</a>
</body>
</html>
