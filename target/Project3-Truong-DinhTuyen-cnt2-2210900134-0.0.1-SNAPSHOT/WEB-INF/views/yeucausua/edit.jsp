<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Sửa Yêu Cầu Sửa</title>
</head>
<body>
    <h1>Sửa Yêu Cầu Sửa</h1>
    <form th:action="@{/yeucausua/update}" method="post">
        <!-- Ẩn mã yêu cầu -->
        <input type="hidden" name="tdt_MaYeuCau" th:value="${yeuCau.tdt_MaYeuCau}" />
        <div>
            <label>Mô Tả:</label>
            <textarea name="tdt_MoTa" th:text="${yeuCau.tdt_MoTa}" required></textarea>
        </div>
        <div>
            <label>Mã Thiết Bị:</label>
            <input type="text" name="tdt_MaThietBi" th:value="${yeuCau.tdt_MaThietBi}" />
        </div>
        <div>
            <label>Mã Phòng:</label>
            <input type="text" name="tdt_MaPhong" th:value="${yeuCau.tdt_MaPhong}" />
        </div>
        <div>
            <label>Mã Người Dùng:</label>
            <input type="number" name="tdt_MaNguoiDung" th:value="${yeuCau.tdt_MaNguoiDung}" required/>
        </div>
        <div>
            <label>Trạng Thái:</label>
            <input type="text" name="tdt_TrangThai" th:value="${yeuCau.tdt_TrangThai}" />
        </div>
        <div>
            <label>Ngày Gửi:</label>
            <input type="date" name="tdt_NgayGui" th:value="${yeuCau.tdt_NgayGui}" required/>
        </div>
        <div>
            <label>Ngày Xử Lý:</label>
            <input type="date" name="tdt_NgayXuLy" th:value="${yeuCau.tdt_NgayXuLy}" />
        </div>
        <div>
            <button type="submit">Cập nhật</button>
        </div>
    </form>
    <a th:href="@{/yeucausua/list}">Quay lại danh sách</a>
</body>
</html>
