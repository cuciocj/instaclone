import 'package:flutter/material.dart';
import 'package:instaclone/widgets/bottom_nav_bar.dart';
import 'package:instaclone/screens/search_page.dart';

class Routes {
  static const String homeRoute = "/home";
  static const String searchRoute = "/search";

  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return <String, WidgetBuilder> {
      homeRoute:(_) => const HomePage(),
      searchRoute:(_) => const SearchPage(),
    };
  }
}