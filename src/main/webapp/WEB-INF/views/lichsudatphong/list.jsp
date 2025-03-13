<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Lịch Sử Đặt Phòng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #17a2b8;
        }
        h1 { color: #333; }
        a { text-decoration: none; color: #007bff; }
        a:hover { text-decoration: underline; }
        .add-link {
            display: inline-block;
            margin-bottom: 15px;
            font-size: 16px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th { background-color: #f2f2f2; color: #333; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        .btn-menu {
            padding: 8px 16px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            margin-top: 15px;
        }
        .btn-menu:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h1>Danh sách Lịch Sử Đặt Phòng</h1>
    <a class="add-link" href="${pageContext.request.contextPath}/lichsudatphong/add">Chọn Phòng</a>
    <table>
        <thead>
            <tr>
                <th>Mã Đặt Phòng</th>
                <th>Mã Người Dùng</th>
                <th>Mã Phòng</th>
                <th>Thời Gian Bắt Đầu</th>
                <th>Thời Gian Kết Thúc</th>
                <th>Trạng Thái</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ls" items="${lichSuList}">
                <tr>
                    <td>${ls.tdt_MaDatPhong}</td>
                    <td>${ls.tdt_MaNguoiDung}</td>
                    <td>${ls.tdt_MaPhong}</td>
                    <td>${ls.tdt_ThoiGianBatDau}</td>
                    <td>${ls.tdt_ThoiGianKetThuc}</td>
                    <td>${ls.tdt_TrangThai}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/lichsudatphong/edit/${ls.tdt_MaDatPhong}">Sửa</a>
                        |
                        <a href="${pageContext.request.contextPath}/lichsudatphong/delete/${ls.tdt_MaDatPhong}"
                           onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <!-- Nút quay về trang menu -->
    <button type="button" class="btn-menu" onclick="location.href='${pageContext.request.contextPath}/nguoidung/menu'">
        Quay về Menu
    </button>
</body>
</html>
