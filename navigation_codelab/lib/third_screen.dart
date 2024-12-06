import 'package:flutter/material.dart';
import 'package:navigation_codelab/first_screen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Mengganti layar saat tombol back ditekan
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => FirstScreen()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildActivityCard(
                title: 'Mantai Karaoke Party',
                description: 'This is the description for Activity 1.',
                imageUrl: 'assets/activity/port-item1.jpg',
              ),
              SizedBox(height: 10),
              _buildActivityCard(
                title: 'Hackathon Devforge',
                description: 'This is the description for Activity 2.',
                imageUrl: 'assets/activity/port-item2.jpg',
              ),
              SizedBox(height: 10),
              _buildActivityCard(
                title: 'Oweek 2024 as AMD',
                description: 'This is the description for Activity 3.',
                imageUrl: 'assets/activity/port-item3.jpg',
              ),
              SizedBox(height: 10),
              _buildActivityCard(
                title: 'Mantai Halloween',
                description: 'This is the description for Activity 4.',
                imageUrl: 'assets/activity/port-item4.jpg',
              ),
            ],
          ),
        ),
      ),
      drawer: FirstScreen(),
    );
  }

  Widget _buildActivityCard({
    required String title,
    required String description,
    required String imageUrl,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imageUrl, width: double.infinity, height: 200, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
