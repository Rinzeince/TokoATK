/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tokoatk;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author v14
 */

public class Barang {
      public String id;
    public String nama;
    public String jenis;
    public Integer harga;

    public String getId() { return this.id; }
    public String getNama() { return this.nama; }
    public String getJenis() { return this.jenis; }
    public Integer getHarga() { return this.harga; }

    public boolean baca(String id) {
        Connection conn = null;
        PreparedStatement st;
        ResultSet rs;

        try {
            conn = DbConnection.connect();
            String sql = "SELECT * FROM barang WHERE id_barang=?";
            st = conn.prepareStatement(sql);
            st.setString(1, id);
            rs = st.executeQuery();

            if (rs.next()) {
                this.id = rs.getString("id_barang");
                this.nama = rs.getString("nama_barang");
                this.jenis = rs.getString("jenis_barang");
                this.harga = rs.getInt("harga_barang");
                conn.close();
                return true;
            } else {
                conn.close();
                return false;
            }
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean tambah() {
        Connection conn = null;
        PreparedStatement st;

        try {
            conn = DbConnection.connect();
            String sql = "INSERT INTO barang (id_barang, nama_barang, jenis_barang, harga_barang) VALUES (?, ?, ?, ?)";
            st = conn.prepareStatement(sql);
            st.setString(1, id);
            st.setString(2, nama);
            st.setString(3, jenis);
            st.setInt(4, harga);

            st.executeUpdate();
            conn.close();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
    
    public boolean update() {
       
        Connection conn = null;
        PreparedStatement st;
        
        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "UPDATE barang set nama_barang=?, jenis_barang=?, harga_barang=? where id_barang=?";
            st = conn.prepareStatement(sql);
            st.setString(1, this.nama);
            st.setString(2, this.jenis);
            st.setInt(3, this.harga);
            st.setString(4, this.id);

            st.executeUpdate();

            conn.close();

            return true;
        } catch (Exception ex) {
            return false;
        }
    }
    
    public boolean hapus() {
        Connection conn = null;
        PreparedStatement st;
        
        try {
            conn = DbConnection.connect();

            // prepare select statement
            String sql = "DELETE FROM barang where id_barang=?";
            st = conn.prepareStatement(sql);
            st.setString(1, id);

            st.executeUpdate();

            conn.close();

            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public static ArrayList<Barang> getList() {
        Connection conn = null;
        PreparedStatement st;
        ResultSet rs;
        ArrayList<Barang> result = new ArrayList<Barang>();

        try {
            conn = DbConnection.connect();
            String sql = "SELECT * FROM barang";
            st = conn.prepareStatement(sql);
            rs = st.executeQuery();

            while (rs.next()) {
                Barang barang = new Barang();
                barang.baca(rs.getString("id_barang"));
                result.add(barang);
            }
            conn.close();
            return result;
        } catch (Exception ex) {
            return null;
        }
    }   
}
