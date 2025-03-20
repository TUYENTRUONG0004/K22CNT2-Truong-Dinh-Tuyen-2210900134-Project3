<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Sửa Thiết Bị</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-info">
    <div class="container mt-5 bg-white p-4 rounded">
        <h1 class="text-center">Sửa Thiết Bị</h1>
        <form action="${pageContext.request.contextPath}/thietbi/update" method="post">
            <input type="hidden" name="tdt_MaThietBi" value="${thietBi.tdt_MaThietBi}" />
            <div class="mb-3">
                <label class="form-label">Tên Thiết Bị:</label>
                <input type="text" name="tdt_TenThietBi" class="form-control" value="${thietBi.tdt_TenThietBi}" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Loại Thiết Bị:</label>
                <input type="text" name="tdt_LoaiThietBi" class="form-control" value="${thietBi.tdt_LoaiThietBi}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Mã Phòng:</label>
                <input type="text" name="tdt_MaPhong" class="form-control" value="${thietBi.tdt_MaPhong}" />
            </div>
            <div class="mb-3">
                <label class="form-label">Ngày Mua:</label>
                <input type="text" name="tdt_NgayMua" class="form-control" value="${thietBi.tdt_NgayMua}" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Trạng Thái:</label>
                <input type="text" name="tdt_TrangThai" class="form-control" value="${thietBi.tdt_TrangThai}" required />
            </div>
            <div class="mb-3">
                <label class="form-label">Ghi Chú:</label>
                <textarea name="tdt_GhiChu" class="form-control">${thietBi.tdt_GhiChu}</textarea>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Cập Nhật</button>
            </div>
        </form>
        <div class="text-center mt-3">
            <button type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/thietbi/list'">
                Quay lại danh sách
            </button>
        </div>
    </div>
</body>
</html>
