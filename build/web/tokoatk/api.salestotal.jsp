<%-- 
    Document   : api.salestotal
    Created on : Jun 26, 2025, 5:13:44 PM
    Author     : v14
--%>

<%@page import="tokoatk.Sales"%>
<%@page import="tokoatk.SalesDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="application/json" pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true"%>
<%
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    
    // Clear any whitespace
    out.clearBuffer();
    
    // Mengambil parameter id dari POST request
    String salesId = request.getParameter("id");
    
    if (salesId != null && !salesId.isEmpty()) {
        try {
            // Membuat object Sales dan membaca data berdasarkan ID
            Sales sales = new Sales();
            boolean found = sales.baca(salesId);
            
            if (found) {
                // Mengambil detail sales
                ArrayList<SalesDetail> details = sales.getDetail();
                
                // Menghitung total dari seluruh item (qty * harga)
                int totalAmount = 0;
                if (details != null) {
                    for (SalesDetail detail : details) {
                        totalAmount += detail.getTotal(); // getTotal() sudah menghitung qty * harga
                    }
                }
                
                // Mengembalikan response dalam format JSON
                out.print("{\"status\":\"success\",\"total\":" + totalAmount + "}");
            } else {
                out.print("{\"status\":\"error\",\"message\":\"Sales not found\"}");
            }
            
        } catch (Exception e) {
            // Jika terjadi error
            out.print("{\"status\":\"error\",\"message\":\"Error calculating total: " + e.getMessage() + "\"}");
        }
    } else {
        // Jika parameter id tidak ditemukan
        out.print("{\"status\":\"error\",\"message\":\"Sales ID is required\"}");
    }
    
    out.flush();
%>