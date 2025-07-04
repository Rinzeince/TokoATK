<%-- 
    Document   : formstocktambah
    Created on : Jun 19, 2025, 8:17:03?PM
    Author     : v14
--%>


<%@page import="tokoatk.Sales"%>
<%
    // Cek login
    Object fullnameObj = session.getAttribute("fullname");

    if (fullnameObj == null) {
        // Redirect ke login dengan pesan
        response.sendRedirect("login.jsp?msg=Silakan+login+terlebih+dahulu");
        return;
    }

    String fullname = fullnameObj.toString();

    Sales sales = new Sales();

    if (request.getParameter("id") == null) {
        sales.tambah(fullname);
    } else {
        sales.baca(request.getParameter("id"));
    }

    request.setAttribute("sales", sales);

    RequestDispatcher dispatcher = request.getRequestDispatcher("formstocktambah.view.jsp");
    dispatcher.forward(request, response);
%>