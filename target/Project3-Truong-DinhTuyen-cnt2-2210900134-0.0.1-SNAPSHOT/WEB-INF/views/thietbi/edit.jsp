<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Sửa Thiết Bị</title>
</head>
<body>
    <h1>Sửa Thông Tin Thiết Bị</h1>
    <form th:action="@{/thietbi/update}" method="post">
        <!-- Ẩn mã thiết bị -->
        <input type="hidden" name="tdt_MaThietBi" th:value="${thietBi.tdt_MaThietBi}" />
        <div>
            <label>Tên Thiết Bị:</label>
            <input type="text" name="tdt_TenThietBi" th:value="${thietBi.tdt_TenThietBi}" required/>
        </div>
        <div>
            <label>Loại Thiết Bị:</label>
            <input type="text" name="tdt_LoaiThietBi" th:value="${thietBi.tdt_LoaiThietBi}" />
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong" th:value="${thietBi.tdt_MaPhong}" />
        </div>
        <div>
            <label>Ngày Mua:</label>
            <input type="date" name="tdt_NgayMua" th:value="${thietBi.tdt_NgayMua}" required/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" th:value="${thietBi.tdt_TrangThai}" />
        </div>
        <div>
            <label>Ghi Chú:</label>
            <textarea name="tdt_GhiChu" th:text="${thietBi.tdt_GhiChu}"></textarea>
        </div>
        <div>
            <button type="submit">Cập nhật</button>
        </div>
    </form>
    <a th:href="@{/thietbi/list}">Quay lại danh sách</a>
</body>
</html>
