<%-- 
    Document   : home
    Created on : Jun 16, 2025, 9:25:02?PM
    Author     : v14
--%>

<%
    if (session.getAttribute("fullname") == null) {
    response.sendRedirect("formlogin.jsp");
    return;
    }
    
    String fullname = session.getAttribute("fullname").toString();
    
    request.setAttribute("fullname", fullname);
    
    RequestDispatcher dispacher = request.getRequestDispatcher("home.view.jsp");
    dispacher.forward(request, response);
%>
