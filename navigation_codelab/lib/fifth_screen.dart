import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FifthScreen extends StatelessWidget {
  // Fungsi untuk membuka URL menggunakan package url_launcher
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) { // Mengecek apakah URL bisa diluncurkan
      await launch(url); // Membuka URL jika bisa
    } else {
      throw 'Could not launch $url'; // Jika tidak bisa meluncurkan URL, munculkan error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan posisi judul di tengah
      appBar: AppBar(
        centerTitle: true, // Menyusun judul di tengah
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Memberikan jarak sekitar konten
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun konten di tengah vertikal
          crossAxisAlignment: CrossAxisAlignment.center, // Menyusun konten di tengah horizontal
          children: [
            // Teks judul "Contact Me"
            Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Memberikan jarak antara judul dan baris gambar
            // Row untuk menampilkan gambar sosial media
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Menyusun gambar secara horizontal di tengah
              children: [
                // Button Instagram
                GestureDetector(
                  onTap: () => _launchURL('https://www.instagram.com/aurlrel'), // Membuka Instagram saat diklik
                  child: Image.asset(
                    'assets/images/instagram.png', // Ganti dengan jalur gambar Instagram Anda
                    width: 50, // Ukuran gambar Instagram
                    height: 50, // Ukuran gambar Instagram
                  ),
                ),
                SizedBox(width: 15), // Memberikan jarak antar gambar
                // Button GitHub
                GestureDetector(
                  onTap: () => _launchURL('https://github.com/aurel0365'), // Membuka GitHub saat diklik
                  child: Image.asset(
                    'assets/images/github.png', // Ganti dengan jalur gambar GitHub Anda
                    width: 50, // Ukuran gambar GitHub
                    height: 50, // Ukuran gambar GitHub
                  ),
                ),
                SizedBox(width: 15), // Memberikan jarak antar gambar
                // Button Email
                GestureDetector(
                  onTap: () => _launchURL('mailto:nataaureliadavineputri@gmail.com'), // Membuka aplikasi email saat diklik
                  child: Image.asset(
                    'assets/images/gmail.png', // Ganti dengan jalur gambar Email Anda
                    width: 50, // Ukuran gambar Email
                    height: 50, // Ukuran gambar Email
                  ),
                ),
                SizedBox(width: 15), // Memberikan jarak antar gambar
                // Button LinkedIn
                GestureDetector(
                  onTap: () => _launchURL('https://www.linkedin.com/in/aurelia-davine-putri-nata-580757280/'), // Membuka LinkedIn saat diklik
                  child: Image.asset(
                    'assets/images/link.png', // Ganti dengan jalur gambar LinkedIn Anda
                    width: 50, // Ukuran gambar LinkedIn
                    height: 50, // Ukuran gambar LinkedIn
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
