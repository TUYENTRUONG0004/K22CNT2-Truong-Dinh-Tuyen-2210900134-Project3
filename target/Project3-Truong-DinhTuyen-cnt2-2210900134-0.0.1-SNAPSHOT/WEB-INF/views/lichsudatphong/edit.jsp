<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Sửa Lịch Sử Đặt Phòng</title>
</head>
<body>
    <h1>Sửa Lịch Sử Đặt Phòng</h1>
    <form th:action="@{/lichsudatphong/update}" method="post">
        <!-- Ẩn mã đặt phòng -->
        <input type="hidden" name="tdt_MaDatPhong" th:value="${lichSu.tdt_MaDatPhong}" />
        <div>
            <label>Mã Người Dùng:</label>
            <input type="number" name="tdt_MaNguoiDung" th:value="${lichSu.tdt_MaNguoiDung}" required/>
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong" th:value="${lichSu.tdt_MaPhong}" required/>
        </div>
        <div>
            <label>Thời Gian Bắt Đầu:</label>
            <input type="datetime-local" name="tdt_ThoiGianBatDau"
                   th:value="${#dates.format(lichSu.tdt_ThoiGianBatDau, 'yyyy-MM-dd\'T\'HH:mm')}" required/>
        </div>
        <div>
            <label>Thời Gian Kết Thúc:</label>
            <input type="datetime-local" name="tdt_ThoiGianKetThuc"
                   th:value="${#dates.format(lichSu.tdt_ThoiGianKetThuc, 'yyyy-MM-dd\'T\'HH:mm')}" required/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" th:value="${lichSu.tdt_TrangThai}" />
        </div>
        <div>
            <button type="submit">Cập nhật</button>
        </div>
    </form>
    <a th:href="@{/lichsudatphong/list}">Quay lại danh sách</a>
</body>
</html>
