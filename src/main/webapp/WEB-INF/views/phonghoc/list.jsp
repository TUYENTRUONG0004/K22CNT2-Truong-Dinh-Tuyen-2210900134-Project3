<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Phòng Học</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #17a2b8;
        }
        h1 {
            color: #333;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
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
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
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
    <h1>Danh sách Phòng Học</h1>
    <a class="add-link" href="${pageContext.request.contextPath}/phonghoc/add">➕</a>
    <table>
        <thead>
            <tr>
                <th>Mã Phòng</th>
                <th>Tên Phòng</th>
                <th>Loại Phòng</th>
                <th>Số Chỗ Ngồi</th>
                <th>Trạng Thái</th>
                <th>Ghi Chú</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="phong" items="${phongHocList}">
                <tr>
                    <td>${phong.tdt_MaPhong}</td>
                    <td>${phong.tdt_TenPhong}</td>
                    <td>${phong.tdt_LoaiPhong}</td>
                    <td>${phong.tdt_SoChoNgoi}</td>
                    <td>${phong.tdt_TrangThai}</td>
                    <td>${phong.tdt_GhiChu}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/phonghoc/edit/${phong.tdt_MaPhong}">Sửa</a>
                        |
                        <a href="${pageContext.request.contextPath}/phonghoc/delete/${phong.tdt_MaPhong}"
                           onclick="return confirm('Bạn có chắc chắn muốn xóa?');">
                           Xóa
                        </a>
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
