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
      backgroundColor: Colors.grey,
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
      body:   Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    
                  ),
                ),
              ),

              Container(
                  width: 100,
                    height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    
                  ),
                ),
               Expanded(
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    
                  ),
                ),
              )
            ],
          ),
      
    );
  }
}