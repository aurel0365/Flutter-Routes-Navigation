import 'package:flutter/material.dart';
import 'package:navigation_codelab/first_screen.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> cards = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Screens'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => FirstScreen()),
              (route) => false,
            );
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter number of screens',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _generateScreens,
                child: Text('Generate Screens'),
              ),
              SizedBox(height: 20),
              if (cards.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      final card = cards[index];
                      return ListTile(
                        title: Text(card['title']!),
                        subtitle: Text(card['description']!),
                        onTap: () {
                          _navigateToScreen(index);
                        },
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _generateScreens() {
    final int numberOfScreens = int.tryParse(_controller.text) ?? 0;

    if (numberOfScreens <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter a valid number greater than 0.'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    setState(() {
      cards = List.generate(numberOfScreens, (index) {
        return {
          'title': 'Activity ${index + 1}',
          'description': 'Description for Activity Screen ${index + 1}.',
          'imageUrl': 'assets/activity/port-item${(index % 4) + 1}.jpg',
        };
      });
    });
  }

  void _navigateToScreen(int currentIndex) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => ActivityScreen(
          title: cards[currentIndex]['title']!,
          description: cards[currentIndex]['description']!,
          imageUrl: cards[currentIndex]['imageUrl']!,
          currentIndex: currentIndex,
          totalCards: cards.length,
          onNext: () => _navigateToScreen(currentIndex + 1),
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }
}

class ActivityScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final int currentIndex;
  final int totalCards;
  final VoidCallback onNext;

  const ActivityScreen({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.currentIndex,
    required this.totalCards,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => FirstScreen()),
              (route) => false,
            );
          },
        ),
      ),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! < 0 && currentIndex < totalCards - 1) {
            onNext();
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imageUrl,
              height: 220,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            Spacer(),
            if (currentIndex < totalCards - 1)
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: onNext,
                    child: Text('Next'),
                  ),
                ),
              ),
            if (currentIndex == totalCards - 1)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'You have reached the last screen!',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
