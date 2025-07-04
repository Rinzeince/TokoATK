<%-- 
    Document   : baranglist
    Created on : Jun 19, 2025, 5:38:38?PM
    Author     : v14
--%>

<%@page import="tokoatk.Barang"%>
<%@page import="java.util.ArrayList"%>

<%
    if (session.getAttribute("fullname") == null) {
    response.sendRedirect("formlogin.jsp");
    return;
    }
    
    ArrayList<Barang> list = Barang.getList();
    request.setAttribute("list", list);
    RequestDispatcher dispacher = request.getRequestDispatcher("baranglist.view.jsp");
    dispacher.forward(request, response);
%>