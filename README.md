
# Toko ATK 

Aplikasi berbasis web untuk mengelola data penjualan, pengguna, barang, stok, dan transaksi pada toko alat tulis kantor. Dibangun menggunakan JSP, Servlet, dan Java EE.



## 📌 Fitur Utama

- ✅ Login & Logout dengan sesi
- 🏠 Dashboard pengguna
- 👤 Manajemen data pengguna (CRUD)
- 📦 Manajemen data barang
- 🧾 Pencatatan transaksi penjualan
- 📈 Pemantauan stok barang
- 📋 Tampilan data dalam tabel Bootstrap
- 🔒 Proteksi halaman menggunakan Authentikasi


## Project Structure

``` bash

tokoATK/
├── build.xml         # Skrip utama untuk Ant build
├── build/            # Output hasil kompilasi (build artifacts)
├── nbproject/        # Konfigurasi dan metadata project NetBeans
├── src/              # Kode sumber Java (Servlet, DAO, Model)
├── web/              # File JSP, HTML, CSS, JS, dan aset statis lainnya
├── conf/             # File konfigurasi, seperti MANIFEST.MF
├── lib/              # Library eksternal (file .jar)
├── screenshots/       # Tampilan dari Aplikasi
├── tokoatk.sql        # Database untuk diimport
└── README.md         # Dokumentasi project

```
## ⚙️ Requirements
- JDK versi 8 atau lebih tinggi
- Apache Tomcat versi 8 atau lebih tinggi
- MySQL Server
- MySQl JDBC Driver
- JSTL (jstl-impl.jar & jstl-api.jar)
- NetBeans IDE (direkomendasikan)
- Ant (opsional untuk build manual)




## 🚀 Setup

1. Clone Repository

```bash
  git clone https://github.com/Rinzeince/TokoATK.git
```

2. Go to the project directory

```bash
  cd TokoATK
```

3. Import Database

```bash
    Buka phpMyAdmin atau tool lain seperti MySQL Workbench.
    Buat database baru, misalnya tokoatk.
    Import file tokoatk.sql yang tersedia di direktori database/:
```

4. Konfigurasi Koneksi Database

```bash
src/java/tokoatk/DbConnection.java

```
Sesuaikan user, password, dan nama database MySQL sesuai dengan setting lokal:
```bash
String url = "jdbc:mysql://localhost:3306/tokoatk";
String username = "root";
String password = "";
```

5. Tambahkan Libraries

Pastikan JAR berikut tersedia di dalam folder lib/:
```bash
jstl-1.2.jar
mysql-connector-j-8.x.x.jar
servlet-api.jar
```

6. Build Project
Bisa menggunakan NetBeans (F11) atau build secara manual:
```bash
ant clean
ant build
```

7. Deploy ke Tomcat
- Deploy file dist/TokoATK.war ke folder webapps/ di direktori Tomcat
- Atau jalankan langsung melalui NetBeans dengan tombol Run
## 👥 Login Default


```bash
| Username | Password |
|----------|----------|
| admin2   | admin123 | 

> Tambahkan user baru melalui menu `+ User Baru` di halaman User List.
```

## Screenshots

![Home](/screenshots/home.png)
![User List](/screenshots/userlist.png)
![Data Barang](/screenshots/data_barang.png)
![Sales List](/screenshots/saleslist.png)
![Stock List](/screenshots/stocklist.png)
