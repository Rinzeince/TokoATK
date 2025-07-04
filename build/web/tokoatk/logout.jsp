<%-- 
    Document   : logout
    Created on : Jun 27, 2025, 1:15:16?PM
    Author     : v14
--%>

<%
    session.invalidate();
    
    response.sendRedirect("formlogin.jsp");
%>