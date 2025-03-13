<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Danh sách Thiết Bị</title>
</head>
<body>
    <h1>Danh sách Thiết Bị</h1>
    <a th:href="@{/thietbi/add}">Thêm Thiết Bị</a>
    <table border="1" cellpadding="5">
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
            <tr th:each="tb : ${thietBiList}">
                <td th:text="${tb.tdt_MaThietBi}"></td>
                <td th:text="${tb.tdt_TenThietBi}"></td>
                <td th:text="${tb.tdt_LoaiThietBi}"></td>
                <td th:text="${tb.tdt_MaPhong}"></td>
                <td th:text="${tb.tdt_NgayMua}"></td>
                <td th:text="${tb.tdt_TrangThai}"></td>
                <td th:text="${tb.tdt_GhiChu}"></td>
                <td>
                    <a th:href="@{/thietbi/edit/{id}(id=${tb.tdt_MaThietBi})}">Sửa</a>
                    &nbsp;|&nbsp;
                    <a th:href="@{/thietbi/delete/{id}(id=${tb.tdt_MaThietBi})}"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
