<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Danh sách Yêu Cầu Sửa</title>
</head>
<body>
    <h1>Danh sách Yêu Cầu Sửa</h1>
    <a th:href="@{/yeucausua/add}">Thêm Yêu Cầu Sửa</a>
    <table border="1" cellpadding="5">
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
            <tr th:each="yc : ${yeuCauList}">
                <td th:text="${yc.tdt_MaYeuCau}"></td>
                <td th:text="${yc.tdt_MoTa}"></td>
                <td th:text="${yc.tdt_MaThietBi}"></td>
                <td th:text="${yc.tdt_MaPhong}"></td>
                <td th:text="${yc.tdt_MaNguoiDung}"></td>
                <td th:text="${yc.tdt_TrangThai}"></td>
                <td th:text="${yc.tdt_NgayGui}"></td>
                <td th:text="${yc.tdt_NgayXuLy}"></td>
                <td>
                    <a th:href="@{/yeucausua/edit/{id}(id=${yc.tdt_MaYeuCau})}">Sửa</a>
                    &nbsp;|&nbsp;
                    <a th:href="@{/yeucausua/delete/{id}(id=${yc.tdt_MaYeuCau})}"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
