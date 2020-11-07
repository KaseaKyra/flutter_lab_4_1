import 'package:flutter/material.dart';
import 'detail_view.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate a widget across screens'),
      ),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Image.network(
            'https://www.thedroidsonroids.com/wp-content/uploads/2019/06/flutter_blog-react-vs-flutter.png',
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return DetailScreen();
              },
            ),
          );
        },
      ),
    );
  }
}
