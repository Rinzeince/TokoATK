<%-- 
    Document   : baranghapus.jsp
    Created on : Jun 26, 2025, 10:08:55 PM
    Author     : v14
--%>

<%@page import="tokoatk.Barang"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  String id = request.getParameter("id");
  if(id != null && !id.isEmpty()) {
    Barang barang = new  Barang();
    if (barang.baca(id)) {
            barang.hapus();
        }
    }
    response.sendRedirect("baranglist.jsp");
    %>