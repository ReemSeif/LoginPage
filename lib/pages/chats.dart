import 'package:flutter/material.dart';
import 'package:tunes_app/Components/chat.dart';
import 'package:tunes_app/Components/person.dart';
import 'package:tunes_app/Components/personList.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
 title: Row(
     children:[
      CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('Images/R.jpg'),
      
      ),
      SizedBox(width: 10,),
      Text('Chats',style: TextStyle(
        fontSize: 24,
        fontWeight:FontWeight.bold,

      ),),
    
     ]  

 ) ,
        actions: [
          CircleAvatar(
            child: Icon(Icons.camera_alt), 
          ),
          SizedBox(width: 10,),
         CircleAvatar(
          child:  Icon(Icons.edit),
         )
         
        ],
        
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
           SliverToBoxAdapter(
            child: Personlist(),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(childCount: 8,
            (context ,index){
              return Chat();
            }))
   
        ],),
      ),
    );
  }
}