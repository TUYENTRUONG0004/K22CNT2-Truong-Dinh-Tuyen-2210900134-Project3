<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Người Dùng</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
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
            border: 5px solid #28a745;
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
        .btn-add {
    display: inline-block;
    background-color: #28a745; /* Xanh lá */
    color: #fff; /* Chữ trắng */
    padding: 10px 15px;
    border-radius: 5px;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
}
.btn-add:hover {
    background-color: #218838; /* Màu xanh lá đậm khi hover */
}
    </style>
</head>
<body>
    <h2>Danh Sách Người Dùng</h2>
   
    <form action="${pageContext.request.contextPath}/nguoidung/add" method="get" style="display: inline;">
    <button class="btn-add" type="submit">➕</button>
</form>
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
                        <form action="${pageContext.request.contextPath}/nguoidung/edit/${nd.tdt_MaNguoiDung}" method="get" style="display:inline;">
    <button type="submit" class="btn btn-primary">Sửa</button>
</form>

<a href="${pageContext.request.contextPath}/nguoidung/delete/${nd.tdt_MaNguoiDung}" 
   class="btn btn-delete"
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
