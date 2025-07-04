<%-- 
    Document   : baranglist.view
    Created on : Jun 19, 2025, 5:39:08 PM
    Author     : v14
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Daftar Barang</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/styles.css">

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
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
            <li class="nav-item"><a href="baranglist.jsp" class="nav-link active">📦 Barang</a></li>
            <li class="nav-item"><a href="saleslist.jsp" class="nav-link">🧾 Sales</a></li>
            <li class="nav-item"><a href="stocklist.jsp" class="nav-link">📈 Stock</a></li>
            <li class="nav-item"><a href="logout.jsp" class="nav-link" onclick="return confirmLogout()">🔓 Logout</a></li>
        </ul>
    </nav>

    <!-- Main Content -->
    <div class="main-content p-4 flex-fill">
        <div class="neo-card p-4">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h2 class="neo-title">Daftar Barang</h2>
                <a href="formbarangtambah.jsp" class="btn btn-dark neo-btn">+ Barang Baru</a>
            </div>

            <div class="list-group">
                <c:forEach var="barang" items="${list}">
                    <div class="list-group-item d-flex justify-content-between align-items-center neo-list-item">
                        <div>
                            <strong>ID:</strong> ${barang.getId()} <br>
                            <strong>Nama:</strong>
                            <span id="nama${barang.getId()}">${barang.getNama()}</span> <br>
                            <strong>Harga:</strong>
                            <fmt:formatNumber type="number" pattern="0,000" value="${barang.getHarga()}"/>
                        </div>
                        <div>
                            <button type="button" class="btn btn-sm btn-warning neo-btn" onclick="gantiNama('${barang.getId()}')">Edit Nama</button>
                            <a href="baranghapus.jsp?id=${barang.getId()}" class="btn btn-sm btn-danger neo-btn">Hapus</a>
                        </div>
                    </div>
                </c:forEach>
            </div>

            <button type="button" class="btn btn-outline-dark mt-4 neo-btn" onclick="showStat()">Tampilkan Statistik</button>
        </div>
    </div>
</div>

<script>
    function gantiNama(id) {
        let namabaru = prompt("Edit nama barang?");
        if (namabaru) {
            $.post("api.baranggantinama.jsp", {id: id, namabaru: namabaru}, function (result) {
                $('#nama' + id).html(namabaru);
            });
        }
    }

    function showStat() {
        $.post("api.barangstat.jsp", function (result) {
            try {
                let obj = JSON.parse(result.trim());
                alert("Banyak data: " + obj.banyak + "\nRata-rata: " + obj.rata2);
            } catch (e) {
                alert('Error parsing response: ' + result);
            }
        }).fail(function (xhr, status, error) {
            alert('Error calling API: ' + error);
        });
    }
    
    function confirmLogout() {
    return confirm("Apakah Anda yakin ingin logout?");
    }
</script>
</body>
</html>
