import 'package:flutter/material.dart';
// import 'package:flutter_commerce/app.dart';
import 'package:flutter_commerce/team_folder.dart';

void main() {
  runApp(const CommerceApp());
}

class CommerceApp extends StatelessWidget {
  const CommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter E-commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TeamFolderPage(),
    );
  }
}
