<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Lịch Sử Đặt Phòng</title>
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
			margin: 20px auto;  /* Canh giữa form: margin top/bottom 20px, auto left/right */        }
        form div { margin-bottom: 10px; }
        label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"],
        input[type="datetime-local"],
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
    </style>
</head>
<body>
    <h1>Sửa Lịch Sử Đặt Phòng</h1>
    <form action="${pageContext.request.contextPath}/lichsudatphong/update" method="post">
        <!-- Ẩn Mã Đặt Phòng để xác định bản ghi cần cập nhật -->
        <input type="hidden" name="tdt_MaDatPhong" value="${lichSu.tdt_MaDatPhong}" />
        
        <div>
            <label>Mã Người Dùng:</label>
            <input type="number" name="tdt_MaNguoiDung" value="${lichSu.tdt_MaNguoiDung}" required="required"/>
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong" value="${lichSu.tdt_MaPhong}" required="required"/>
        </div>
        <div>
            <label>Thời Gian Bắt Đầu:</label>
            <input type="datetime-local" name="tdt_ThoiGianBatDau" value="${lichSu.tdt_ThoiGianBatDau}" required="required"/>
        </div>
        <div>
            <label>Thời Gian Kết Thúc:</label>
            <input type="datetime-local" name="tdt_ThoiGianKetThuc" value="${lichSu.tdt_ThoiGianKetThuc}" required="required"/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" value="${lichSu.tdt_TrangThai}" required="required"/>
        </div>
        <div>
            <input type="submit" value="Cập nhật"/>
        </div>
    </form>
    <br/>
    <a href="${pageContext.request.contextPath}/lichsudatphong/list">Quay lại danh sách</a>
</body>
</html>
