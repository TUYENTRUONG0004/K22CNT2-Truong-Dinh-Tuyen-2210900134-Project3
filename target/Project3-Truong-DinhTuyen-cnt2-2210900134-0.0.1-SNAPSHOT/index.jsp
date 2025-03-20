<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản ly</title>
    <style>
        /* General styles for a polished look */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #eef2f3;
            color: #333;
            line-height: 1.8;
        }
        .header, .footer {
            background-color: #2c3e50;
            color: #ecf0f1;
            text-align: center;
            padding: 15px 0;
        }
        .content {
            padding: 20px;
            max-width: 1000px;
            margin: 20px auto;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 8px 10px rgba(0, 0, 0, 0.1);
        }
        a {
            display: inline-block;
            margin-top: 10px;
            color: #2980b9;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }
        a:hover {
            color: #3498db;
        }
        p {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="header-links">
            <a href="https://www.facebook.com" target="_blank" class="social-btn"><i class="fab fa-facebook-f"></i></a>
            <a href="https://twitter.com" target="_blank" class="social-btn"><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com" target="_blank" class="social-btn"><i class="fab fa-instagram"></i></a>
        </div>
    <div class="header">
        <h1>Chào mừng đến với Trang WeB :)</h1>
    </div>
    <div class="content">
        <% 
            // Java code
            String message = "Xin chào, JSP!";
            out.print("<p>" + message + "</p>");
        %>
        <a href="${pageContext.request.contextPath}/nguoidung/menu">Chuyển đến Menu</a>
    </div>
    <div class="footer">
        <p>&copy; 2025 Trang Web của Bạn</p>
    </div>
    
</body>
</html>