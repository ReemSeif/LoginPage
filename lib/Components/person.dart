import 'package:flutter/material.dart';
import 'package:tunes_app/models/productsModel.dart';


class Person extends StatelessWidget {
   Person({super.key ,required this.product});
 Product product;
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
                backgroundImage: NetworkImage(product.thumbnail),
                
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
          Text(product.title , style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),),
         
        ],
      );
      
      
  
  }
}

