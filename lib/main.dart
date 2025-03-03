import 'package:flutter/material.dart';
import 'package:tunes_app/pages/tunesView.dart';

void main() {
  runApp(const tune());
}

class tune extends StatelessWidget {
  const tune({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tunesview(),
    );
  }
}