Tugas ini bertujuan untuk membuat aplikasi yang mampu mengambil data saham secara real-time menggunakan API. Aplikasi akan menerima input berupa simbol saham dari pengguna, mengirim permintaan ke API untuk mengambil data keuangan atau harga saham, kemudian menampilkan informasi yang relevan kepada pengguna.

Fitur-fitur yang Harus Diimplementasikan:

Input Simbol Saham: Pengguna dapat memasukkan simbol saham yang diinginkan (misalnya AAPL untuk Apple, GOOGL untuk Google).
Pengambilan Data Secara Asynchronous: Aplikasi harus dapat mengambil data secara asynchronous menggunakan API, seperti Alpha Vantage atau Yahoo Finance.
Pengolahan dan Penyajian Data: Setelah data berhasil diambil, aplikasi akan menampilkan informasi penting, seperti:
Harga saham terkini
Perubahan harga dalam periode waktu tertentu
Data keuangan terkait (misalnya, volume perdagangan, harga pembukaan, harga penutupan, dll.)
Penanganan Kesalahan: Aplikasi harus dapat menangani berbagai jenis kesalahan, seperti:
Simbol saham yang tidak valid atau tidak ada dalam daftar API
Terjadi masalah saat mengambil data dari API (misalnya, kesalahan koneksi atau API down)
Batasan jumlah request pada API (misalnya, jika sudah mencapai batas harian)
Antarmuka Pengguna yang Sederhana: Aplikasi menggunakan CLI (Command Line Interface), yang memungkinkan pengguna untuk memasukkan simbol saham dan menerima hasil yang relevan.
Langkah-langkah Implementasi:

Membuat Struktur Proyek:
Buat folder untuk proyek dan struktur direktori yang sesuai, dengan file utama di dalam folder bin/ dan kode API di dalam folder lib/.
Konfigurasi API:
Tentukan API yang digunakan (misalnya, Alpha Vantage atau Yahoo Finance).
Ambil API key yang diperlukan dan pastikan untuk mengonfigurasi permintaan ke API dengan benar.
Fungsi Pengambilan Data:
Buat fungsi untuk mengirimkan permintaan HTTP ke API dan mengambil data.
Gunakan async dan await untuk melakukan pengambilan data secara asynchronous.
Proses dan Tampilkan Data:
Ambil data yang diterima dari API dan proses untuk menampilkan informasi yang relevan dalam format yang mudah dipahami oleh pengguna.
Menangani Kesalahan:
Implementasikan penanganan kesalahan untuk menangani kasus seperti simbol saham yang tidak valid atau API yang gagal merespons.
Contoh Kasus Penggunaan:

Pengguna memasukkan simbol saham AAPL.
Aplikasi mengirim permintaan ke API untuk mendapatkan data harga saham Apple.
Aplikasi memproses dan menampilkan informasi berikut:
Harga terkini saham Apple.
Perubahan harga dalam waktu tertentu.
Data keuangan lainnya, jika tersedia.
Pengujian:

Uji aplikasi dengan berbagai simbol saham yang valid dan tidak valid.
Pastikan aplikasi dapat menangani kesalahan dengan memberikan pesan yang informatif.
Periksa apakah data yang ditampilkan sesuai dengan data yang diperoleh dari API.
Teknologi yang Digunakan:

Bahasa Pemrograman: Dart
Framework: HTTP package untuk komunikasi API
Platform: CLI (Command Line Interface)
API yang Digunakan: Alpha Vantage / Yahoo Finance (atau API keuangan lainnya)
