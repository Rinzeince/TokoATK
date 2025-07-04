<%-- 
    Document   : formtambahbarang.view
    Created on : Jun 19, 2025, 5:41:54 PM
    Author     : v14
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tambah Barang</title>
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
            <li class="nav-item"><a href="userlist.jsp" class="nav-link">👤 Users</a></li>
            <li class="nav-item"><a href="baranglist.jsp" class="nav-link">📦 Barang</a></li>
            <li class="nav-item"><a href="saleslist.jsp" class="nav-link">🧾 Sales</a></li>
            <li class="nav-item"><a href="stocklist.jsp" class="nav-link">📈 Stock</a></li>
            <li class="nav-item"><a href="logout.jsp" class="nav-link" onclick="return confirmLogout()">🔓 Logout</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div class="main-content p-4 flex-fill">
        <div class="neo-card p-4">
            <h1 class="neo-title mb-4">Tambah Barang</h1>
            <form action="barangtambah.jsp" method="post" class="neo-form">
                <div class="mb-3">
                    <label class="form-label">ID:</label>
                    <input name="id" class="form-control neo-input" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Nama:</label>
                    <input name="nama" class="form-control neo-input" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Jenis:</label>
                    <input name="jenis" class="form-control neo-input">
                </div>
                <div class="mb-3">
                    <label class="form-label">Harga:</label>
                    <input name="harga" type="number" class="form-control neo-input" required>
                </div>
                <button type="submit" class="btn neo-btn mt-3">Tambah</button>
            </form>
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
