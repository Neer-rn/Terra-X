import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './resources/colours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Color Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.finalColor, // Change the background color here
      body: Column(
        children: [
          SvgPicture.asset(
            'assets/images/fist.svg',
            height: 100, 
            width: 70,  // Adjust the height as needed
          ),
          const Center(
            child: Text('Hello, World!'),
          ),
        ],
      ),
    );
  }
}