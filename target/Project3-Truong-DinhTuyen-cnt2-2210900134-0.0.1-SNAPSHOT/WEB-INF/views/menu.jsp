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
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .navbar {
            background: linear-gradient(135deg, #007bff, #6610f2);
            padding: 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .navbar ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            display: flex;
            justify-content: center;
        }
        .navbar li {
            position: relative;
        }
        .navbar li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 16px;
            transition: 0.3s;
        }
        .navbar li a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
        }
        .navbar li::after {
            content: "";
            position: absolute;
            width: 0;
            height: 2px;
            background: white;
            bottom: 0;
            left: 50%;
            transition: all 0.3s ease;
        }
        .navbar li:hover::after {
            width: 100%;
            left: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Trang Chủ</a></li>
            <li><a href="${pageContext.request.contextPath}/nguoidung">Quản Lý Người Dùng</a></li>
            </ul>
       
    </nav>
</body>
</html>