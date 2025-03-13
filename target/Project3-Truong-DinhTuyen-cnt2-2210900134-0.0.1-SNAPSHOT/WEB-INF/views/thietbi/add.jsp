<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Thêm Thiết Bị</title>
</head>
<body>
    <h1>Thêm Thiết Bị</h1>
    <form th:action="@{/thietbi/save}" method="post">
        <div>
            <label>Mã Thiết Bị:</label>
            <input type="text" name="tdt_MaThietBi" required/>
        </div>
        <div>
            <label>Tên Thiết Bị:</label>
            <input type="text" name="tdt_TenThietBi" required/>
        </div>
        <div>
            <label>Loại Thiết Bị:</label>
            <input type="text" name="tdt_LoaiThietBi"/>
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong"/>
        </div>
        <div>
            <label>Ngày Mua:</label>
            <input type="date" name="tdt_NgayMua" value="2020-01-01" required/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" value="Đang chờ"/>
        </div>
        <div>
            <label>Ghi Chú:</label>
            <textarea name="tdt_GhiChu"></textarea>
        </div>
        <div>
            <button type="submit">Lưu</button>
        </div>
    </form>
    <a th:href="@{/thietbi/list}">Quay lại danh sách</a>
</body>
</html>
