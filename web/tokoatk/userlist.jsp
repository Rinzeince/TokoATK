<%-- 
    Document   : userlist
    Created on : Jun 16, 2025, 9:26:09?PM
    Author     : v14
--%>

<%@page import="tokoatk.User"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("fullname") == null) {
    response.sendRedirect("formlogin.jsp");
    return;
    }
    
    ArrayList<User> list = User.getList();
    
    request.setAttribute("list", list);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("userlist.view.jsp");
    dispacher.forward(request, response);
%>