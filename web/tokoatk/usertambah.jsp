<%-- 
    Document   : usertambah
    Created on : Jun 16, 2025, 9:26:44?PM
    Author     : v14
--%>

<%@page import="tokoatk.User"%>
<%
    String username = request.getParameter("username").toString();
    String fullname = request.getParameter("fullname").toString();
    String password = request.getParameter("password").toString();
    
    User user = new User();
    user.username = username;
    user.fullname = fullname;
    user.tambah(password);
    
    response.sendRedirect("userlist.jsp");
%>