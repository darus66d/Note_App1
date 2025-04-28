import 'package:flutter/material.dart';
import 'package:note_app1/main.dart';
import 'package:note_app1/screens/home_screen.dart';

class NoteApp1 extends StatelessWidget {
  const NoteApp1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note_App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   HomeScreen(),
    );
  }
}