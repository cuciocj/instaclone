import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instaclone/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instaclone',
      routes: Routes.getRoutes(context),
      initialRoute: Routes.homeRoute,
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 1,
        ),
        textTheme: GoogleFonts.comicNeueTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
