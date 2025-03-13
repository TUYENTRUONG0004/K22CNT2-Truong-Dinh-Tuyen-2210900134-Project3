<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Thêm Phòng Học</title>
</head>
<body>
    <h1>Thêm Phòng Học</h1>
    <form th:action="@{/phonghoc/save}" method="post">
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong" required/>
        </div>
        <div>
            <label>Tên Phòng:</label>
            <input type="text" name="tdt_TenPhong" required/>
        </div>
        <div>
            <label>Loại Phòng:</label>
            <input type="text" name="tdt_LoaiPhong" />
        </div>
        <div>
            <label>Số Chỗ Ngồi:</label>
            <input type="number" name="tdt_SoChoNgoi" />
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" value="Đang chờ" />
        </div>
        <div>
            <label>Ghi Chú:</label>
            <textarea name="tdt_GhiChu"></textarea>
        </div>
        <div>
            <button type="submit">Lưu</button>
        </div>
    </form>
    <a th:href="@{/phonghoc/list}">Quay lại danh sách</a>
</body>
</html>
