<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Yêu Cầu Sửa</title>
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
    <h1>Danh sách Yêu Cầu Sửa</h1>
    <a class="add-link" href="${pageContext.request.contextPath}/yeucausua/add">ADD</a>
    <table>
        <thead>
            <tr>
                <th>Mã Yêu Cầu</th>
                <th>Mô Tả</th>
                <th>Mã Thiết Bị</th>
                <th>Mã Phòng</th>
                <th>Mã Người Dùng</th>
                <th>Trạng Thái</th>
                <th>Ngày Gửi</th>
                <th>Ngày Xử Lý</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="yc" items="${yeuCauList}">
                <tr>
                    <td>${yc.tdt_MaYeuCau}</td>
                    <td>${yc.tdt_MoTa}</td>
                    <td>${yc.tdt_MaThietBi}</td>
                    <td>${yc.tdt_MaPhong}</td>
                    <td>${yc.tdt_MaNguoiDung}</td>
                    <td>${yc.tdt_TrangThai}</td>
                    <td>${yc.tdt_NgayGui}</td>
                    <td>${yc.tdt_NgayXuLy}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/yeucausua/edit/${yc.tdt_MaYeuCau}">Sửa</a>
                        |
                        <a href="${pageContext.request.contextPath}/yeucausua/delete/${yc.tdt_MaYeuCau}"
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
