<%-- 
    Document   : index
    Created on : Jun 16, 2025, 9:22:52?PM
    Author     : v14
--%>

<%
    if(session.getAttribute("fullname")==null) {
        response.sendRedirect("formlogin.jsp");
    } else {
        response.sendRedirect("home.jsp");
    }
%>