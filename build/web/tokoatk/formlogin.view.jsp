<%-- 
    Document   : formlogin.view
    Created on : Jun 16, 2025, 9:24:38 PM
    Author     : v14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS-->
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body class="d-flex justify-content-center align-items-center vh-100 bg-light">

<div class="neo-card p-5 w-100" style="max-width: 400px;">
    <h2 class="neo-title text-center mb-4">Login</h2>

    <%-- Tampilkan pesan jika ada parameter msg --%>
    <%
        String msg = request.getParameter("msg");
        if (msg != null && !msg.isEmpty()) {
    %>
    <div class="alert neo-alert alert-danger text-center">
        <%= msg %>
    </div>
    <%
        }
    %>

    <form action="login.jsp" method="post" class="neo-form">
        <div class="mb-3">
            <label class="form-label">Username:</label>
            <input name="username" class="form-control neo-input" required>
        </div>
        <div class="mb-3">
            <label class="form-label">Password:</label>
            <input name="password" type="password" class="form-control neo-input" required>
        </div>
        <button type="submit" class="btn neo-btn w-100">Masuk</button>
    </form>
</div>

</body>
</html>
