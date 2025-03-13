<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Thêm Lịch Sử Đặt Phòng</title>
</head>
<body>
    <h1>Thêm Lịch Sử Đặt Phòng</h1>
    <form th:action="@{/lichsudatphong/save}" method="post">
        <div>
            <label>Mã Đặt Phòng:</label>
            <input type="text" name="tdt_MaDatPhong" required/>
        </div>
        <div>
            <label>Mã Người Dùng:</label>
            <input type="number" name="tdt_MaNguoiDung" required/>
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong" required/>
        </div>
        <div>
            <label>Thời Gian Bắt Đầu:</label>
            <input type="datetime-local" name="tdt_ThoiGianBatDau" required/>
        </div>
        <div>
            <label>Thời Gian Kết Thúc:</label>
            <input type="datetime-local" name="tdt_ThoiGianKetThuc" required/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" value="Đang chờ"/>
        </div>
        <div>
            <button type="submit">Lưu</button>
        </div>
    </form>
    <a th:href="@{/lichsudatphong/list}">Quay lại danh sách</a>
</body>
</html>
