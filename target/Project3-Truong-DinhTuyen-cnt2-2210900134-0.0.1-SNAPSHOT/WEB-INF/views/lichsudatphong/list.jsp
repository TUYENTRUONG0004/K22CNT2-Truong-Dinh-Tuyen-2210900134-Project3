<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Danh sách Lịch Sử Đặt Phòng</title>
</head>
<body>
    <h1>Danh sách Lịch Sử Đặt Phòng</h1>
    <a th:href="@{/lichsudatphong/add}">Thêm Lịch Sử Đặt Phòng</a>
    <table border="1" cellpadding="5">
        <thead>
            <tr>
                <th>Mã Đặt Phòng</th>
                <th>Mã Người Dùng</th>
                <th>Mã Phòng</th>
                <th>Thời Gian Bắt Đầu</th>
                <th>Thời Gian Kết Thúc</th>
                <th>Trạng Thái</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="ls : ${lichSuList}">
                <td th:text="${ls.tdt_MaDatPhong}"></td>
                <td th:text="${ls.tdt_MaNguoiDung}"></td>
                <td th:text="${ls.tdt_MaPhong}"></td>
                <td th:text="${ls.tdt_ThoiGianBatDau}"></td>
                <td th:text="${ls.tdt_ThoiGianKetThuc}"></td>
                <td th:text="${ls.tdt_TrangThai}"></td>
                <td>
                    <a th:href="@{/lichsudatphong/edit/{id}(id=${ls.tdt_MaDatPhong})}">Sửa</a>
                    &nbsp;|&nbsp;
                    <a th:href="@{/lichsudatphong/delete/{id}(id=${ls.tdt_MaDatPhong})}"
                       onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                </td>
            </tr>
        </tbody>
    </table>
</body>
</html>
