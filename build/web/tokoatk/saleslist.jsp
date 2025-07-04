<%-- 
    Document   : saleslist
    Created on : Jun 19, 2025, 7:49:26?PM
    Author     : v14
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="tokoatk.Sales"%>
<%
    if (session.getAttribute("fullname") == null) {
    response.sendRedirect("formlogin.jsp");
    return;
    }
    
    ArrayList<Sales> list = Sales.getList();
    
    request.setAttribute("list", list);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("saleslist.view.jsp");
    dispacher.forward(request, response);
%>