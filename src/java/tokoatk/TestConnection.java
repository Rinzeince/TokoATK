/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tokoatk;

/**
 *
 * @author v14
 */

import java.sql.Connection;

public class TestConnection {
    public static void main(String[] args) {
        try {
            Connection conn = DbConnection.connect();
            if (conn != null && !conn.isClosed()) {
                System.out.println("Koneksi ke database berhasil!");
                conn.close(); // Jangan lupa menutup koneksi
            } else {
                System.out.println("Koneksi ke database gagal.");
            }
        } catch (Exception e) {
            System.out.println("Terjadi kesalahan: " + e.getMessage());
        }
    }
}
