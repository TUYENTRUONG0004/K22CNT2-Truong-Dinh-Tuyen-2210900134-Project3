<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm Lịch Sử Đặt Phòng</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-info">
    <div class="container mt-5 bg-white p-4 rounded">
        <h1 class="text-center">Thêm Lịch Sử Đặt Phòng</h1>
        <form action="${pageContext.request.contextPath}/lichsudatphong/save" method="post">
            <!-- Mã đặt phòng: nếu để trống, hệ thống tự sinh mã -->
            <div class="mb-3">
                <label class="form-label">Mã Đặt Phòng:</label>
                <input type="text" name="tdt_MaDatPhong" class="form-control" placeholder="Để trống nếu tự sinh" />
            </div>
            <div class="mb-3">
                <label class="form-label">Mã Người Dùng:</label>
                <input type="number" name="tdt_MaNguoiDung" class="form-control" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Mã Phòng:</label>
                <input type="text" name="tdt_MaPhong" class="form-control" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Ngày Bắt Đầu:</label>
                <input type="text" name="tdt_ThoiGianBatDau" class="form-control" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Ngày Kết Thúc:</label>
                <input type="text" name="tdt_ThoiGianKetThuc" class="form-control" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Trạng Thái:</label>
                <input type="text" name="tdt_TrangThai" class="form-control" value="Đang chờ" required />
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Lưu</button>
            </div>
        </form>
        <div class="text-center mt-3">
            <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/lichsudatphong/list'">
                Xem Danh Sách Đặt Phòng
            </button>
        </div>
    </div>
</body>
</html>
