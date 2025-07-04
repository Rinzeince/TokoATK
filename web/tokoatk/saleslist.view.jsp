<%-- 
    Document   : saleslist.view
    Created on : Jun 19, 2025, 7:49:57 PM
    Author     : v14
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Sales List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Neo-brutalism CSS -->
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/layout.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/components.css">
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
            <li class="nav-item"><a href="userlist.jsp" class="nav-link">👤 Users</a></li>
            <li class="nav-item"><a href="baranglist.jsp" class="nav-link">📦 Barang</a></li>
            <li class="nav-item"><a href="saleslist.jsp" class="nav-link active">🧾 Sales</a></li>
            <li class="nav-item"><a href="stocklist.jsp" class="nav-link">📈 Stock</a></li>
            <li class="nav-item"><a href="logout.jsp" class="nav-link" onclick="return confirmLogout()">🔓 Logout</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div class="main-content p-4 flex-fill">
        <div class="neo-card p-4">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2 class="neo-title">🧾 Sales List</h2>
                <a href="formsalestambah.jsp" class="btn neo-btn">+ Transaksi Baru</a>
            </div>

            <div class="neo-table">
                <c:forEach var="row" items="${list}">
                    <div class="neo-table-row p-3 mb-3 border rounded bg-white">
                        <p><strong>ID Transaksi:</strong> ${row.getId()}</p>
                        <p><strong>Username:</strong> ${row.getUsername()}</p>
                        <p><strong>Waktu Transaksi: </strong>
                            <c:choose>
                                <c:when test="${row.getWaktu() != null}">
                                    ${row.getWaktuFormatted()}
                                </c:when>
                                <c:otherwise>
                                    <span class="text-danger">Data tidak tersedia</span>
                                </c:otherwise>
                            </c:choose>
                        </p>
                        <a href="formsalestambah.jsp?id=${row.getId()}" class="btn btn-sm neo-btn">📄 Lihat / Edit</a>
                    </div>
                </c:forEach>
            </div>
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
