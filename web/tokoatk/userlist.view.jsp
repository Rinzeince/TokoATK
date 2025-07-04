<%-- 
    Document   : userlist.view
    Created on : Jun 16, 2025, 9:26:21 PM
    Author     : v14
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
<div class="dashboard-wrapper d-flex">

    <!-- Sidebar -->
    <nav class="sidebar bg-white border-end">
        <div class="sidebar-header">
            <h3 class="neo-title">TOKO ATK</h3>
        </div>
        <ul class="nav flex-column">
            <li class="nav-item"><a href="home.jsp" class="nav-link">🏠 Home</a></li>
            <li class="nav-item"><a href="userlist.jsp" class="nav-link active">👤 Users</a></li>
            <li class="nav-item"><a href="baranglist.jsp" class="nav-link">📦 Barang</a></li>
            <li class="nav-item"><a href="saleslist.jsp" class="nav-link">🧾 Sales</a></li>
            <li class="nav-item"><a href="stocklist.jsp" class="nav-link">📈 Stock</a></li>
            <li class="nav-item"><a href="logout.jsp" class="nav-link" onclick="return confirmLogout()">🔓 Logout</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div class="main-content p-4 flex-fill">
        <div class="neo-card p-4">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h2 class="neo-title mb-0">User List</h2>
                <a href="formusertambah.jsp" class="btn btn-dark neo-btn">+ User Baru</a>
            </div>

            <table class="table table-bordered neo-table mt-3">
                <thead class="table-light">
                    <tr>
                        <th>Username</th>
                        <th>Fullname</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${list}">
                        <tr>
                            <td>${user.getUsername()}</td>
                            <td>${user.getFullname()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
    <script>
    function confirmLogout() {
        return confirm("Apakah Anda yakin ingin logout?");
    }
    </script>
</body>
</html>
