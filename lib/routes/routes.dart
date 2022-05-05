import 'package:flutter/material.dart';
import 'package:instaclone/screens/home.dart';

class Routes {
  static const String homeRoute = "/home";
  static const String searchRoute = "/search";

  static Map<String, WidgetBuilder> getRoutes(BuildContext context) {
    return <String, WidgetBuilder> {
      homeRoute:(_) => const HomePage(),
    };
  }
}