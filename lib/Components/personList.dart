import 'package:flutter/material.dart';
import 'package:tunes_app/Components/person.dart';

class Personlist extends StatelessWidget {
  const Personlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder( 
        scrollDirection: Axis.horizontal,
        itemCount: 8,
       itemBuilder: (context , index){
        return Person();
      }
    )
      ,
    );
  }
}