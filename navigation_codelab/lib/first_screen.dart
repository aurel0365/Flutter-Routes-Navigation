import 'package:flutter/material.dart';
import 'second_screen.dart'; // Mengimpor second screen
import 'third_screen.dart'; // Mengimpor third screen

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _currentIndex = 0; // Menyimpan indeks layar aktif

  // Daftar layar yang akan ditampilkan sesuai navigasi
  final List<Widget> _screens = [
    FirstScreenContent(),
    SecondScreen(),
    ThirdScreen(),
  ];

  void _onItemTapped(int index) {
    if (index < 0 || index >= _screens.length) {
      _showErrorDialog(); // Menampilkan dialog jika index tidak valid
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text('Navigasi gagal! Halaman yang diminta tidak ada.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _screens[_currentIndex], // Menampilkan layar sesuai indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, 
        onTap: (index) {
          // Periksa kesalahan navigasi dan beri umpan balik
          if (index < 0 || index >= _screens.length) {
            _showSnackBar('Navigasi gagal! Halaman tidak ditemukan.');
          } else {
            _onItemTapped(index);
          }
        },
        selectedItemColor: Colors.white, // Warna ikon yang dipilih
        unselectedItemColor: Colors.grey, // Warna ikon yang tidak dipilih
        backgroundColor: Colors.purple, // Warna latar belakang navbar
        type: BottomNavigationBarType.fixed, // Menambahkan tipe navbar yang lebih fleksibel
        elevation: 10, // Memberikan efek bayangan pada navbar
        iconSize: 28, // Ukuran ikon
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Ikon untuk layar pertama
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info), // Ikon untuk layar kedua
            label: 'About Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work), // Ikon untuk layar ketiga
            label: 'Activity',
          ),
        ],
      ),
    );
  }
}

class FirstScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center( // Membuat seluruh konten rata tengah
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100, 
            backgroundImage: AssetImage('assets/images/aurelnama.jpeg'),
          ),
          SizedBox(height: 20), // Memberi jarak antara gambar dan teks
          Text(
            'Aurelia Davine Putri Nata', 
            style: TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold, 
            ),
          ),
          SizedBox(height: 5), 
          Text(
            'Welcome to my codelab', 
            style: TextStyle(fontSize: 16, color: Colors.grey), 
          ),
        ],
      ),
    );
  }
}
