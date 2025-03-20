<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        /* General styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f7f9;
            color: #333;
            line-height: 1.6;
        }

        /* HEADER & NAVBAR */
        .header {
            background: linear-gradient(90deg, #2c3e50, #4a69bb);
            color: #fff;
            text-align: center;
            padding: 20px 10px;
            font-size: 24px;
            font-weight: 600;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .navbar {
            display: flex;
            justify-content: center;
            background: #2c3e50;
            padding: 10px;
        }
        .navbar a {
            color: #ecf0f1;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 18px;
            transition: background 0.3s ease-in-out;
        }
        .navbar a:hover {
            background: #f1c40f;
            color: #333;
            border-radius: 5px;
        }

        /* SOCIAL LINKS */
        .header-links {
            text-align: right;
            padding: 10px 20px;
            background: #2c3e50;
        }
        .header-links a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
            font-size: 20px;
            transition: color 0.3s ease-in-out;
        }
        .header-links a:hover {
            color: #f1c40f;
        }

        /* CONTENT */
        .content {
            padding: 30px;
            max-width: 900px;
            margin: 30px auto;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .content h2 {
            color: #2980b9;
            margin-bottom: 15px;
        }
        .content p {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .content a {
            display: inline-block;
            background: #2980b9;
            color: #fff;
            padding: 12px 20px;
            border-radius: 5px;
            font-weight: bold;
            text-decoration: none;
            transition: background 0.3s ease;
        }
        .content a:hover {
            background: #1c638d;
        }

        /* FEATURES SECTION */
        .features {
            display: flex;
            justify-content: space-between;
            padding: 20px;
            max-width: 900px;
            margin: auto;
            gap: 15px;
        }
        .feature-box {
            background: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            flex: 1;
        }
        .feature-box i {
            font-size: 30px;
            color: #2980b9;
            margin-bottom: 10px;
        }
        .feature-box h3 {
            font-size: 18px;
            margin-bottom: 10px;
        }
        .feature-box p {
            font-size: 14px;
            color: #666;
        }

        /* FOOTER */
        .footer {
            background: #2c3e50;
            color: #ecf0f1;
            text-align: center;
            padding: 15px 0;
            margin-top: 30px;
            font-size: 14px;
            width: 100%;
        }
        .footer:hover {
            background: #1c2833;
            transition: 0.3s;
        }
        .footer p {
            margin: 0;
        }
    </style>
</head>
<body>

    <!-- Social Links -->
    <div class="header-links">
        <a href="https://www.facebook.com/truong.tuyen.317519/?locale=vi_VN" target="_blank" class="social-btn"><i class="fab fa-facebook-f"></i></a>
        <a href="https://github.com/TUYENTRUONG0004/K22CNT2-Truong-Dinh-Tuyen-2210900134-Project3/blob/master/src/main/java/com/springmvc/beans/Tdt_ThietBi.java" target="_blank" class="social-btn"><i class="fab fa-github"></i></a>
    </div>

    <!-- Header -->
    <div class="header">
        <h1>Chào mừng đến với Trang WeB :)</h1>
    </div>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/">Trang chủ</a>
        <a href="${pageContext.request.contextPath}/nguoidung/menu">Quản lý</a>
        <a href="https://www.facebook.com/truong.tuyen.317519/?locale=vi_VN">Liên hệ</a>
    </div>

    <!-- Content -->
    <div class="content">
        <h2>Giới thiệu về trang web</h2>
        <p>Trang web giúp bạn quản lý dữ liệu một cách dễ dàng và hiệu quả.</p>
        <a href="${pageContext.request.contextPath}/nguoidung/menu">Truy cập Quản lý</a>
    </div>

    <!-- Features Section -->
    <div class="features">
        <div class="feature-box">
            <i class="fas fa-chart-line"></i>
            <h3>Thống kê dữ liệu</h3>
            <p>Theo dõi dữ liệu dễ dàng, giúp tối ưu quản lý.</p>
        </div>
        <div class="feature-box">
            <i class="fas fa-users"></i>
            <h3>Quản lý người dùng</h3>
            <p>Thêm, sửa, xóa người dùng nhanh chóng.</p>
        </div>
        <div class="feature-box">
            <i class="fas fa-cogs"></i>
            <h3>Tùy chỉnh cài đặt</h3>
            <p>Giao diện thân thiện, dễ sử dụng.</p>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Trang Web của Bạn | Designed with ❤️</p>
    </div>

</body>
</html>
