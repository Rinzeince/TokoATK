<%-- 
    Document   : api.baranggantinama
    Created on : Jun 22, 2025, 10:33:22?PM
    Author     : v14
--%>

<%@page import="tokoatk.Barang" %>
<%
    String id = request.getParameter("id");
    String namabaru = request.getParameter("namabaru");
    
    Barang barang = new Barang();
    barang.baca(id);
    barang.nama = namabaru;
    if(barang.update()) {
        out.print("ok");
    } else {
        out.print("fail");
    }
%>