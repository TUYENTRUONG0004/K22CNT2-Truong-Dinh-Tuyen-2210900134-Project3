<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Danh sách Người Dùng</title>
</head>
<body>
    <h1>Danh sách Người Dùng</h1>
    <a th:href="@{/nguoidung/add}">Thêm Người Dùng</a>
    <table border="1" cellpadding="5">
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
            <tr th:each="nd : ${nguoiDungList}">
                <td th:text="${nd.tdt_MaNguoiDung}">ID</td>
                <td th:text="${nd.tdt_HoTen}">Họ Tên</td>
                <td th:text="${nd.tdt_VaiTro}">Vai Trò</td>
                <td th:text="${nd.tdt_Email}">Email</td>
                <td>
                    <a th:href="@{/nguoidung/edit/{id}(id=${nd.tdt_MaNguoiDung})}">Sửa</a>
                    &nbsp;|&nbsp;
                    <a th:href="@{/nguoidung/delete/{id}(id=${nd.tdt_MaNguoiDung})}"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa?');">
                       Xóa
                    </a>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
