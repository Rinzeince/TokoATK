<%-- 
    Document   : stocktambah
    Created on : Jun 19, 2025, 8:18:21?PM
    Author     : v14
--%>

<%@page import="tokoatk.Sales"%>
<%
    String salesId = request.getParameter("salesId").toString();
    String barangId = request.getParameter("barangId").toString();
    Integer qty = Integer.parseInt(request.getParameter("qty"));
    Integer harga = Integer.parseInt(request.getParameter("harga"));

    Sales sales = new Sales();
    sales.baca(salesId);
    sales.addDetail(barangId, qty, harga);

    response.sendRedirect("formstocktambah.jsp?id=" + salesId);
%>
