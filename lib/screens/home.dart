import 'package:flutter/material.dart';
import 'package:instaclone/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        title: const Text(
          'Instaclone',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // TODO handle press
            },
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {
              // TODO handle press
            },
            icon: const Icon(Icons.message_outlined),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('hello friend'),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
