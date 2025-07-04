<%-- 
    Document   : formsalestambah.view
    Created on : Jun 19, 2025, 7:48:45 PM
    Author     : v14
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Detail Transaksi Sales</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS-->
    <link rel="stylesheet" href="assets/css/styles.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
            <h1 class="neo-title mb-4">Transaksi ID: ${sales.getId()}</h1>

            <div class="mb-4">
                <h5 class="neo-subtitle">Detail Barang</h5>
                <table class="table neo-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Barang ID</th>
                            <th>Nama Barang</th>
                            <th>Qty</th>
                            <th>Harga</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="row" items="${sales.getDetail()}">
                        <tr>
                            <td>${row.getId()}</td>
                            <td>${row.getBarangId()}</td>
                            <td>${row.getBarangNama()}</td>
                            <td>${row.getQty()}</td>
                            <td>${row.getHarga()}</td>
                            <td>${row.getTotal()}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <form action="salesdetailtambah.jsp" method="post" class="neo-form">
                <input type="hidden" name="salesId" value="${sales.getId()}">
                <div class="row">
                    <div class="col-md-4 mb-3">
                        <label class="form-label">Barang ID</label>
                        <input name="barangId" class="form-control neo-input" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="form-label">Qty</label>
                        <input name="qty" type="number" class="form-control neo-input" required>
                    </div>
                    <div class="col-md-4 mb-3">
                        <label class="form-label">Harga</label>
                        <input name="harga" type="number" class="form-control neo-input" required>
                    </div>
                </div>
                <button type="submit" class="btn neo-btn">Tambah</button>
            </form>

            <button type="button" class="btn neo-btn mt-4" onclick="getTotal()">Hitung Total</button>
        </div>
    </div>
</div>

<script>
    function getTotal() {
        var salesId = '${sales.getId()}';

        $.post('api.salestotal.jsp', { id: salesId }, function(data) {
            try {
                let response = (typeof data === 'string') ? JSON.parse(data.trim()) : data;
                if (response.status === 'success') {
                    alert('Total: ' + response.total);
                } else {
                    alert('Error: ' + response.message);
                }
            } catch (e) {
                console.error('Parse error:', e);
                alert('Error parsing response: ' + data);
            }
        }).fail(function(xhr, status, error) {
            console.error('AJAX error:', status, error);
            alert('Gagal memanggil API: ' + error);
        });
    }
    
    function confirmLogout() {
    return confirm("Apakah Anda yakin ingin logout?");
}
</script>
</body>
</html>
