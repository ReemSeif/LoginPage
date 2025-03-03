import 'package:flutter/material.dart';

class Tunesview extends StatefulWidget {
  const Tunesview({super.key});

  @override
  State<Tunesview> createState() => _TunesviewState();
}

class _TunesviewState extends State<Tunesview> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('reem'),
        backgroundColor:  Colors.indigoAccent,
        leading: const Icon(Icons.menu),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.star)),
          IconButton(onPressed: (){
            setState(() {
              count++;
            });
          }, icon: Text('$count' , style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 16,
          ),))
        ],
        
      ),
    );
  }
}