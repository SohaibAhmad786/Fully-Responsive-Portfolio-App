import 'package:flutter/material.dart';
import 'package:portfolio/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Urbanist",
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
