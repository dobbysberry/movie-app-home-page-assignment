import 'package:flutter/material.dart';
import 'package:movie_app_home/pages/home_page.dart';

void main() {
  runApp(const HomePage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
    );
  }
}


