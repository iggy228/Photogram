import 'package:flutter/material.dart';
import 'package:photo_gram/screen/navigation_bar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => NavigationBarScreen(),
      },
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[900],
        primaryColorDark: Colors.black87,
        accentColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.white
        )
      ),
    );
  }
}