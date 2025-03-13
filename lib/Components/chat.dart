import 'package:flutter/material.dart';
import 'package:tunes_app/Components/person.dart';

class Chat extends StatelessWidget {
   Chat({super.key});
final date= DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Person(),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reem',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
               Text('my name is reem',style: TextStyle(
                fontSize: 14,
              ),),
            
            ],
          ),
        ),
          CircleAvatar(
              radius: 3,
              backgroundColor: Colors.blue,
            ),
          Text('$date'),
      ],
    );
  }
}