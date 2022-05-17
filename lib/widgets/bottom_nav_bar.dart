import 'dart:core';

import 'package:flutter/material.dart';
import 'package:instaclone/screens/activity_page.dart';
import 'package:instaclone/screens/profile_page.dart';
import 'package:instaclone/screens/reels_page.dart';
import 'package:instaclone/screens/search_page.dart';
import 'package:instaclone/screens/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _appBarTitle = 'Instaclone';
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    FeedPage(),
    SearchPage(),
    ReelPage(),
    ActivityPage(),
    ProfilePage(),
  ];

  final List<BottomNavigationBarItem> _navbarItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.ondemand_video_outlined),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border_outlined),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_outline),
      label: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsIconTheme: const IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        title: Text(
          _appBarTitle,
          style: const TextStyle(
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
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: _navbarItems,
      ),
    );
  }
}
