<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản Lý </title>
    <style>
        body {
    font-family: "Poppins", Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #0056b3;
}

.navbar {
    background: linear-gradient(135deg, #2ecc71, #27ae60);
    padding: 10px 0;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
}

.navbar ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
}

.navbar li {
    position: relative;
    margin: 0 10px;
}

.navbar li a {
    display: block;
    color: white;
    font-weight: 600;
    text-transform: uppercase;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
    font-size: 16px;
    transition: all 0.3s ease-in-out;
}

.navbar li a:hover {
    background: rgba(255, 255, 255, 0.2);
    border-radius: 8px;
    transform: translateY(-2px);
}

.navbar li::after {
    content: "";
    position: absolute;
    width: 0;
    height: 3px;
    background: white;
    bottom: -5px;
    left: 50%;
    transition: all 0.3s ease-in-out;
}

.navbar li:hover::after {
    width: 100%;
    left: 0;
}

.container {
    max-width: 850px;
    margin: 80px auto 20px; /* Thêm margin-top để tránh navbar */
    background: white;
    padding: 25px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    border-radius: 12px;
    animation: fadeIn 0.8s ease-in-out;
}

/* Hiệu ứng mờ dần khi load trang */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(-10px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

    </style>
</head>
<body>
    <nav class="navbar">
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Trang Chủ</a></li>
            <li><a href="${pageContext.request.contextPath}/nguoidung/list">Quản Lý Nguoi Dung</a></li>
            <li><a href="${pageContext.request.contextPath}/phonghoc/list">Quản Lý Phòng Hoc</a></li>
            <li><a href="${pageContext.request.contextPath}/thietbi/list">Thiết Bị</a></li>
            <li><a href="${pageContext.request.contextPath}/yeucausua/add">Yêu cầu sửa</a></li>
            <li><a href="${pageContext.request.contextPath}/lichsudatphong/add">Lịch sử| Chọn Phòng Hoc</a></li>
            <li><a href="${pageContext.request.contextPath}/phanhoi/add">Nhận xét | Phản hồi </a></li>
            
        </ul>
    </nav>
    <div class="container">
        <h2>Hệ Thống Quản Lý Cơ Sở Vật Chất</h2>
<p>Đây là trang web demo các chức năng phục vụ sinh viên và giảng viên. Hệ thống giúp quản lý phòng học, thiết bị, đặt phòng và gửi yêu cầu sửa chữa một cách thuận tiện.</p>

<h3>Giới thiệu</h3>
<ul>
    <li>Quản lý phòng học và thiết bị.</li>
    <li>Hỗ trợ đặt phòng trực tuyến.</li>
    <li>Gửi yêu cầu sửa chữa nhanh chóng.</li>
    <li>Gửi phản hồi, góp ý về cơ sở vật chất.</li>
</ul>

<h3>Chức năng chính</h3>
<ul>
    <li>Quản lý thông tin người dùng.</li>
    <li>Tra cứu danh sách phòng học.</li>
    <li>Kiểm tra trạng thái thiết bị trong phòng.</li>
    <li>Gửi yêu cầu sửa chữa khi gặp sự cố.</li>
    <li>Đặt phòng học theo lịch trình.</li>
    <li>Gửi phản hồi và góp ý về cơ sở vật chất.</li>
</ul>

<h3>Chi tiết tính năng</h3>
<ul>
    <li>Thiết Bị: <b>Xem danh sách và tình trạng thiết bị.</b></li>
    <li>Chọn Phòng Học: <b>Đặt phòng theo thời gian rảnh.</b></li>
    <li>Nhận xét | Phản hồi: <b>Đóng góp ý kiến về phòng học và thiết bị.</b></li>
    <li>Yêu Cầu Sửa Chữa: <b>Báo cáo lỗi và theo dõi tiến trình sửa chữa.</b></li>
</ul>

    </div>
</body>
</html>