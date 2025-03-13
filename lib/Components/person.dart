import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Stack(
            alignment: Alignment.bottomRight,
            children:[Padding(
              padding: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('Images/R.png'),
                
              ),
            ),
          
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: CircleAvatar(
                       radius:8,
                       backgroundColor: Colors.green,
                     ),
           ),] 
          ),
          Text('reem seif'),
         
        ],
      );
      
      
  
  }
}

