import 'package:flutter/material.dart';
import 'profile_screen.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProfileScreen(),
    );

  }


}
