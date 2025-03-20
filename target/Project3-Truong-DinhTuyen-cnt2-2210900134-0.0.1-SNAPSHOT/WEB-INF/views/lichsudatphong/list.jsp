<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh Sách Lịch Sử Đặt Phòng</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body { font-family: Arial, sans-serif; background-color: #17a2b8; }
        .container { background-color: #fff; padding: 20px; border-radius: 8px; margin-top: 20px; }
        table { width: 100%; border-collapse: collapse; }
        th, td { border: 1px solid #28a745; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Danh Sách Lịch Sử Đặt Phòng</h1>
        <div class="mb-3 text-center">
            <a href="${pageContext.request.contextPath}/lichsudatphong/add" class="btn btn-success">Thêm Lịch Sử Đặt Phòng</a>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th>Mã Đặt Phòng</th>
                    <th>Mã Người Dùng</th>
                    <th>Mã Phòng</th>
                    <th>Ngày Bắt Đầu</th>
                    <th>Ngày Kết Thúc</th>
                    <th>Trạng Thái</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ls" items="${lichSuList}">
                    <tr>
                        <td>${ls.tdt_MaDatPhong}</td>
                        <td>${ls.tdt_MaNguoiDung}</td>
                        <td>${ls.tdt_MaPhong}</td>
                        <td>${ls.tdt_ThoiGianBatDau}</td>
                        <td>${ls.tdt_ThoiGianKetThuc}</td>
                        <td>${ls.tdt_TrangThai}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/lichsudatphong/edit/${ls.tdt_MaDatPhong}" class="btn btn-primary btn-sm">Sửa</a>
                            <a href="${pageContext.request.contextPath}/lichsudatphong/delete/${ls.tdt_MaDatPhong}" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="text-center mt-3">
            <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/nguoidung/menu'">Quay về Menu</button>
        </div>
    </div>
</body>
</html>
