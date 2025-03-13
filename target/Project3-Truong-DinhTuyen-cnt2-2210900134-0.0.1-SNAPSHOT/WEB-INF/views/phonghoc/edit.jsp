<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Sửa Phòng Học</title>
</head>
<body>
    <h1>Sửa Thông Tin Phòng Học</h1>
    <form th:action="@{/phonghoc/update}" method="post">
        <!-- Ẩn mã phòng -->
        <input type="hidden" name="tdt_MaPhong" th:value="${phongHoc.tdt_MaPhong}" />
        <div>
            <label>Tên Phòng:</label>
            <input type="text" name="tdt_TenPhong" th:value="${phongHoc.tdt_TenPhong}" required/>
        </div>
        <div>
            <label>Loại Phòng:</label>
            <input type="text" name="tdt_LoaiPhong" th:value="${phongHoc.tdt_LoaiPhong}" />
        </div>
        <div>
            <label>Số Chỗ Ngồi:</label>
            <input type="number" name="tdt_SoChoNgoi" th:value="${phongHoc.tdt_SoChoNgoi}" />
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" th:value="${phongHoc.tdt_TrangThai}" />
        </div>
        <div>
            <label>Ghi Chú:</label>
            <textarea name="tdt_GhiChu" th:text="${phongHoc.tdt_GhiChu}"></textarea>
        </div>
        <div>
            <button type="submit">Cập nhật</button>
        </div>
    </form>
    <a th:href="@{/phonghoc/list}">Quay lại danh sách</a>
</body>
</html>
