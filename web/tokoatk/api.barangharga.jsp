<%-- 
    Document   : api.barangharga.jsp
    Created on : Jun 26, 2025, 7:49:51 PM
    Author     : v14
--%>

<%@ page import="java.sql.*" %>
<%@ page import="tokoatk.*" %>
<%@ page contentType="application/json" pageEncoding="UTF-8"%>
<%
    response.setContentType("application/json");
    String barangId = request.getParameter("barangId");
    
    if (barangId == null || barangId.trim().isEmpty()) {
        out.print("{\"status\":\"error\",\"message\":\"Barang ID tidak boleh kosong\"}");
        return;
    }
    
    try {
        DbConnection db = new DbConnection();
        Connection conn = db.getConnection();
        
        String sql = "SELECT harga FROM barang WHERE id = ?";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1, barangId);
        
        ResultSet rs = stmt.executeQuery();
        
        if (rs.next()) {
            double harga = rs.getDouble("harga");
            out.print("{\"status\":\"success\",\"harga\":" + harga + "}");
        } else {
            out.print("{\"status\":\"error\",\"message\":\"Barang tidak ditemukan\"}");
        }
        
        rs.close();
        stmt.close();
        conn.close();
        
    } catch (Exception e) {
        out.print("{\"status\":\"error\",\"message\":\"Error: " + e.getMessage() + "\"}");
    }
%>