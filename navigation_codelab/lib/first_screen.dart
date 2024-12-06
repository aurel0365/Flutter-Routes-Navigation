import 'package:flutter/material.dart';
import 'second_screen.dart'; // Mengimpor second screen
import 'third_screen.dart'; // Mengimpor third screen
import 'fourth_screen.dart'; // Mengimpor fourth screen

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
    FourthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: _screens[_currentIndex], // Menampilkan layar sesuai indeks
      drawer: Drawer( // Menambahkan Drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context); // Menutup drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Me'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
                Navigator.pop(context); // Menutup drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Activity'),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
                Navigator.pop(context); // Menutup drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('CV'),
              onTap: () {
                setState(() {
                  _currentIndex = 3;
                });
                Navigator.pop(context); // Menutup drawer
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Menentukan indeks aktif
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah indeks saat tombol ditekan
          });
        },
        selectedItemColor: Colors.blue, // Warna ikon yang dipilih
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0), // Warna ikon yang tidak dipilih
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
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail), // Ikon untuk layar keempat
            label: 'CV',
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
        mainAxisAlignment: MainAxisAlignment.center, // Menata widget di tengah secara vertikal
        children: [
          CircleAvatar(
            radius: 100, // Membuat gambar avatar berbentuk lingkaran dengan radius 100
            backgroundImage: AssetImage('assets/images/aurelnama.jpeg'), // Menentukan gambar avatar
          ),
          SizedBox(height: 20), // Memberi jarak antara gambar dan teks
          Text(
            'Aurelia Davine Putri Nata', // Nama pengguna
            style: TextStyle(
              fontSize: 24, // Ukuran font untuk nama
              fontWeight: FontWeight.bold, // Menebalkan teks
            ),
          ),
          SizedBox(height: 5), // Memberi jarak antara nama dan teks selamat datang
          Text(
            'Welcome to my codelab', // Pesan sambutan
            style: TextStyle(fontSize: 16, color: Colors.grey), // Ukuran font dan warna teks sambutan
          ),
        ],
      ),
    );
  }
}
