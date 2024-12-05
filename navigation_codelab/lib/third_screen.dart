import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dengan judul
      appBar: AppBar(
        title: Text('Activity'), // Judul di AppBar
      ),
      body: SingleChildScrollView(
        // Membuat tampilan bisa di-scroll jika konten melebihi layar
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Padding di sekitar konten
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Menyusun widget secara vertikal
            children: [
              // Deskripsi pertama: Kegiatan Mantai Karaoke Party
              _buildActivityCard(
                title: 'Mantai Karaoke Party',
                description: 'This is the description for Activity 1. It can be any event or activity description.',
                imageUrl: 'assets/activity/port-item1.jpg'),
              SizedBox(height: 10), // Jarak antar kartu kegiatan
              // Deskripsi kedua: Kegiatan Hackathon Devforge
              _buildActivityCard(
                title: 'Hackathon Devforge',
                description: 'This is the description for Activity 2. It includes detailed information.',
                imageUrl: 'assets/activity/port-item2.jpg'),
              SizedBox(height: 10), // Jarak antar kartu kegiatan
              // Deskripsi ketiga: Kegiatan Oweek 2024 as AMD
              _buildActivityCard(
                title: 'Oweek 2024 as AMD',
                description: 'This is the description for Activity 3. More info about this event can be added here.',
                imageUrl: 'assets/activity/port-item3.jpg'),
              SizedBox(height: 10), // Jarak antar kartu kegiatan
              // Deskripsi keempat: Kegiatan Mantai Halloween
              _buildActivityCard(
                title: 'Mantai Halloween',
                description: 'This is the description for Activity 4. It can include dates, locations, etc.',
                imageUrl: 'assets/activity/port-item4.jpg' ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun setiap kartu kegiatan
  Widget _buildActivityCard({
    required String title, // Judul kegiatan
    required String description, // Deskripsi kegiatan
    required String imageUrl, // URL gambar kegiatan
  }) {
    return Card(
      elevation: 5, // Memberikan efek bayangan pada kartu
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Membulatkan sudut kartu
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Padding di dalam kartu
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Menyusun elemen dalam kolom secara vertikal
          children: [
            // Gambar kegiatan
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Membulatkan sudut gambar
              child: Image.network(imageUrl, width: double.infinity, height: 200, fit: BoxFit.cover), 
              // Menggunakan gambar dari URL, disesuaikan dengan ukuran lebar dan tinggi
            ),
            SizedBox(height: 10), // Jarak antara gambar dan judul
            // Judul kegiatan
            Text(
              title,
              style: TextStyle(
                fontSize: 22, // Ukuran font untuk judul
                fontWeight: FontWeight.bold, // Membuat font judul tebal
                color: Colors.black87, // Warna font judul
              ),
            ),
            SizedBox(height: 5), // Jarak antara judul dan deskripsi
            // Deskripsi kegiatan
            Text(
              description,
              style: TextStyle(
                fontSize: 16, // Ukuran font untuk deskripsi
                color: Colors.black54, // Warna font deskripsi
              ),
            ),
          ],
        ),
      ),
    );
  }
}
