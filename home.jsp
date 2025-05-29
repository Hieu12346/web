<%-- 
    Document   : home
    Created on : Mar 9, 2025, 8:34:48 PM
    Author     : Admin
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    HttpSession session1 = request.getSession(false);
    if (session1 == null || session1.getAttribute("username") == null) {
        response.sendRedirect("dangnhap.html");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Trang Chủ</title>
</head>
<body>
    <h2>Chào mừng, <%= session1.getAttribute("username") %>!</h2>
    <a href="LogoutServlet">Đăng xuất</a>
</body>
</html>
