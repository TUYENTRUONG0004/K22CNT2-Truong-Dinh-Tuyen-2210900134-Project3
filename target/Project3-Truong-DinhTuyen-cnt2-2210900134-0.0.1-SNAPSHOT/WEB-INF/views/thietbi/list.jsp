<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Thiết Bị</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
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
    </style>
</head>
<body>
    <h1>Danh sách Thiết Bị</h1>
     <form action="${pageContext.request.contextPath}/thietbi/add" method="get" style="display: inline;">
    <button class="btn-add" type="submit">➕</button>
</form>
    <table>
        <thead>
            <tr>
                <th>Mã Thiết Bị</th>
                <th>Tên Thiết Bị</th>
                <th>Loại Thiết Bị</th>
                <th>Mã Phòng</th>
                <th>Ngày Mua</th>
                <th>Trạng Thái</th>
                <th>Ghi Chú</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="tb" items="${thietBiList}">
                <tr>
                    <td>${tb.tdt_MaThietBi}</td>
                    <td>${tb.tdt_TenThietBi}</td>
                    <td>${tb.tdt_LoaiThietBi}</td>
                    <td>${tb.tdt_MaPhong}</td>
                    <td>${tb.tdt_NgayMua}</td>
                    <td>${tb.tdt_TrangThai}</td>
                    <td>${tb.tdt_GhiChu}</td>
                    <td>
<td>
    <a href="${pageContext.request.contextPath}/thietbi/edit/${tb.tdt_MaThietBi}" class="btn btn-edit">
         Sửa
    </a>

    <a href="${pageContext.request.contextPath}/thietbic/delete/${tb.tdt_MaThietBi}"
       class="btn btn-delete"
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
