<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Người Dùng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #17a2b8;
        }
        h2 {
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
    <h2>Danh Sách Người Dùng</h2>
    <a class="add-link" href="${pageContext.request.contextPath}/nguoidung/add">➕</a>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Họ Tên</th>
                <th>Vai Trò</th>
                <th>Email</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="nd" items="${nguoiDungList}">
                <tr>
                    <td>${nd.tdt_MaNguoiDung}</td>
                    <td>${nd.tdt_HoTen}</td>
                    <td>${nd.tdt_VaiTro}</td>
                    <td>${nd.tdt_Email}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/nguoidung/edit/${nd.tdt_MaNguoiDung}">✏️ Sửa</a>
                        |
                        <a href="${pageContext.request.contextPath}/nguoidung/delete/${nd.tdt_MaNguoiDung}" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">❌ Xóa</a>
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
