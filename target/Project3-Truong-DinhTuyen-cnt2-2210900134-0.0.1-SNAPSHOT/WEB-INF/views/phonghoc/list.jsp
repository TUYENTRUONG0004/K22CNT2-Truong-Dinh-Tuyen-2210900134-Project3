<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Danh sách Phòng Học</title>
</head>
<body>
    <h1>Danh sách Phòng Học</h1>
    <a th:href="@{/phonghoc/add}">Thêm Phòng Học</a>
    <table border="1" cellpadding="5">
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
            <tr th:each="phong : ${phongHocList}">
                <td th:text="${phong.tdt_MaPhong}"></td>
                <td th:text="${phong.tdt_TenPhong}"></td>
                <td th:text="${phong.tdt_LoaiPhong}"></td>
                <td th:text="${phong.tdt_SoChoNgoi}"></td>
                <td th:text="${phong.tdt_TrangThai}"></td>
                <td th:text="${phong.tdt_GhiChu}"></td>
                <td>
                    <a th:href="@{/phonghoc/edit/{id}(id=${phong.tdt_MaPhong})}">Sửa</a>
                    &nbsp;|&nbsp;
                    <a th:href="@{/phonghoc/delete/{id}(id=${phong.tdt_MaPhong})}"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
