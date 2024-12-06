# Navigation_Codelab 🚀

Selamat datang di proyek Flutter **navigation_codelab**! 🎉  
Proyek ini dibuat sebagai bagian dari codelab **Routes & Navigation**. Tujuan dari proyek ini adalah untuk membangun aplikasi Flutter dengan beberapa layar dan mempelajari cara menavigasi antar layar menggunakan berbagai teknik.

## 📜 Tujuan

Tujuan utama dari codelab ini adalah untuk memandu Anda dalam membangun aplikasi Flutter dengan beberapa layar dan mengimplementasikan navigasi antar layar. Pada akhirnya, Anda akan memiliki pemahaman yang solid tentang manajemen rute dan cara bernavigasi dengan efisien antar layar.

## ✨ Fitur

- **Beberapa Layar**: Aplikasi ini mencakup beberapa layar untuk menunjukkan cara kerja navigasi di Flutter. 📱
- **Manajemen Rute**: Layar- layar dihubungkan melalui rute navigasi, menampilkan teknik seperti `push` dan `pop`. 🔄
- **Interaksi Tombol**: Tombol pada layar memicu aksi navigasi untuk berpindah antar layar. 🔘
- **Navbar**: Sebuah bilah navigasi di bagian atas aplikasi yang memberikan akses cepat ke berbagai bagian aplikasi. 📍
- **Drawer**: Menu drawer samping yang memungkinkan pengguna untuk bernavigasi dengan mudah antar layar. 🗂️

## 🖥️ Layar

Aplikasi ini terdiri dari lima layar utama, masing-masing memiliki tujuan dan fungsinya sendiri:

1. **Layar Pertama**: Layar utama dengan gambar diri Anda dan tombol untuk menavigasi ke layar lainnya. 🌟
2. **Layar Kedua**: Layar yang menjelaskan portofolio Anda, dengan opsi untuk kembali ke layar pertama. 💼
3. **Layar Ketiga**: Layar yang menampilkan aktivitas pribadi dan keterlibatan Anda dalam organisasi, dengan tombol untuk kembali ke layar pertama. 🗣️
4. **Layar Keempat**: Menampilkan gambar CV Anda dengan tombol untuk kembali ke layar pertama. 📑

## 🧭 Pendekatan Implementasi Navigasi
Navigasi pada aplikasi ini menggunakan dua metode utama: Drawer dan Bottom Navigation Bar. Berikut adalah pendekatan yang diambil untuk masing-masing metode:
# 1. Drawer
- Setiap item dalam Drawer direpresentasikan menggunakan ListTile, dengan ikon (Icon) dan label (Text) untuk memberikan petunjuk visual. ListTile digunakan untuk membuat isi dengan tata letak yang mudah diatur.
- Klik pada ListTile akan memicu fungsi onTap, yang mengatur indeks layar aktif (_currentIndex) menggunakan setState. digunakan untuk memperbarui tampilan aplikasi secara real-time, di mana nilai _currentIndex diubah sesuai dengan item menu yang dipilih, sehingga layar yang sesuai dari daftar _screens ditampilkan secara dinamis.
- Drawer ditutup dengan memanggil Navigator.pop(context) untuk menjaga pengalaman pengguna tetap mulus.
# 2. Bottom Navbar
- menggunakan BottomNavigationBar yang memungkinkan pengguna mengakses layar utama aplikasi dengan cepat dan langsung, tanpa harus membuka menu tambahan seperti drawer.
- Menentukan Indeks Layar Aktif dengan currentIndex
- Menangani Klik button dengan onTap
- Properti selectedItemColor menentukan warna ikon yang akan berubah ketika sedang diklik.
- unselectedItemColor digunakan untuk warna utama ikon.

## Kendala Selama Pengerjaan 
1. Masalah Tombol back yang Menghilang:
Ketika Drawer dibuat, terdapat tantangan di mana tombol back pada AppBar secara default menghilang.Dikarenakan drawer menutupi tombol back tetapi untuk mengatasi kendala ini saya menyesuaikan penempatannya dimana tombol back akan berada di bawah tombol drawer dan menggunakan properti leading di AppBar.

## 🔧 Instalasi dan Menjalankan Aplikasi

Untuk memulai dengan proyek ini, ikuti langkah-langkah berikut:

1. **Clone repositori ini**:
   ```bash
   git clone https://github.com/your-username/navigation_codelab.git

2. **Masuk ke direktori proyek:**:
   ```bash
   cd navigation_codelab
   
4. **Install dependensi:**
   ```bash
   flutter pub get
   
6. **Jalankan Aplikasi:**:
   ```bash
   flutter run

## 🛠️ Teknologi yang Digunakan
- Flutter: Framework untuk membangun aplikasi mobile lintas platform.
- Dart: Bahasa pemrograman yang digunakan dalam Flutter.


