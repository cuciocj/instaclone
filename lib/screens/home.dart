import 'package:flutter/material.dart';
import 'package:instaclone/widgets/bottom_nav_bar.dart';
import 'package:instaclone/widgets/post.dart';

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
        child: PostList(),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: ListView(
        children: const [
          Post(imageNumber: 238),
          Post(imageNumber: 237),
          Post(imageNumber: 239),
          Post(imageNumber: 236),
        ],
      ),
    );
  }
}
