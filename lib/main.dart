import 'package:flutter/material.dart';
import 'package:tunes_app/pages/Login.dart';
import 'package:tunes_app/pages/chats.dart';


void main() {
  runApp(const tune());
}

class tune extends StatelessWidget {
  const tune({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chats(),
    );
  }
}