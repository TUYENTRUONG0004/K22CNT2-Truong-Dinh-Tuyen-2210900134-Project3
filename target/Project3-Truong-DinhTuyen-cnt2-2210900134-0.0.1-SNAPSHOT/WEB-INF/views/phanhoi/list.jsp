<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Các Phản Hồi</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
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
            border: 5px solid #28a745;
            padding: 8px;
            text-align: left;
        }
        th { background-color: #f2f2f2; color: #333; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        
        .btn {
    display: inline-block;
    padding: 8px 16px;
    background-color: #007bff; /* màu xanh cho nút chung */
    color: #fff;
    text-decoration: none;
    border-radius: 4px;
    font-weight: bold;
    margin: 4px 0;
}

.btn:hover {
    background-color: #0056b3;
}

.btn-delete {
    background-color: #dc3545; /* màu đỏ cho nút xóa */
}

.btn-delete:hover {
    background-color: #c82333;
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
    <h1>Phản Hồi</h1>
    
    <form action="${pageContext.request.contextPath}/phanhoi/add" method="get" style="display: inline;">
    <button class="btn-add" type="submit">➕</button>
</form>
    <table>
        <thead>
            <tr>
                <th>MÃ SV</th>
                <th>Loại Phản Hồi</th>
                <th>Mô Tả</th>
                <th>Chỉ xóa khi đọc xong</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ph" items="${phanHoiList}">
                <tr>
                    <td>${ph.tdt_MaPhanHoi}</td>
                    <td>${ph.tdt_LoaiPhanHoi}</td>
                    <td>${ph.tdt_MoTa}</td>
                    <td>
                       

<form action="${pageContext.request.contextPath}/phanhoi/delete/${ph.tdt_MaPhanHoi}"  style="display:inline;"
      onsubmit="return confirm('Bạn có chắc chắn muốn xóa?');">
    <button type="submit" class="btn btn-danger">Xóa</button>
</form>
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
