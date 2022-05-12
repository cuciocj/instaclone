import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentPage = 0;

  final _navbarItems = const [
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
    return BottomNavigationBar(
      currentIndex: _currentPage,
      onTap: (index) {
        setState(() {
          _currentPage = index;
        });
      },
      items: _navbarItems,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(color: Colors.black),
      unselectedIconTheme: const IconThemeData(color: Colors.black54),
    );
  }
}
