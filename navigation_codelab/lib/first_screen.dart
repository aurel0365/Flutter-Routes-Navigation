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
      ),
      body: _screens[_currentIndex], // Menampilkan layar sesuai indeks
      drawer: Drawer( // Menambahkan Drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 91, 91, 91),
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
        currentIndex: _currentIndex, 
        onTap: (index) {
          setState(() {
            _currentIndex = index; 
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
