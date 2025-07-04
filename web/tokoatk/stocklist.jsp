<%-- 
    Document   : stocklist
    Created on : Jun 19, 2025, 8:16:03?PM
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

    RequestDispatcher dispatcher = request.getRequestDispatcher("stocklist.view.jsp");
    dispatcher.forward(request, response);
%>