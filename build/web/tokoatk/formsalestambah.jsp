<%-- 
    Document   : formsalestambah
    Created on : Jun 19, 2025, 7:47:27?PM
    Author     : v14
--%>

<%@page import="tokoatk.Sales"%>
<%
    String id;
    Sales sales = new Sales();
    if(request.getParameter("id")==null) {
        sales.tambah(session.getAttribute("fullname").toString());
    } else {
        sales.baca(request.getParameter("id"));
    }
    
    request.setAttribute("sales", sales);
    
    RequestDispatcher dispatcher = request.getRequestDispatcher("formsalestambah.view.jsp");
    dispatcher.forward(request, response);
%>