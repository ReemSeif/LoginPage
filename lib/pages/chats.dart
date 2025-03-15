import 'package:flutter/material.dart';
import 'package:tunes_app/Components/chat.dart';
import 'package:tunes_app/Components/person.dart';
import 'package:tunes_app/Components/personList.dart';
import 'package:tunes_app/Dio/provider.dart';
import 'package:tunes_app/models/productsModel.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
    ProductsModel? productsModel;
   bool isLoading = true;
   getProductsFromApiProvider() async {
     productsModel = await ApiProvider().getProducts();
     if (productsModel != null) {
       print("ProductsModel is not null");
       if (productsModel!.products.isNotEmpty) {
         print("First Product: ${productsModel?.products[0]}");
       } else {
         print("Products list is empty");
       }
     } else {
       print("ProductsModel is null");
     }
     setState(() {
       isLoading = false;
     });
 
   }
 
   @override
   void initState() {
     // TODO: implement initState
     super.initState();
     getProductsFromApiProvider();
   }
 
   @override
   void dispose() {
     // TODO: implement dispose
     super.dispose();
   }

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

      body: isLoading
        ? Center(child: CircularProgressIndicator())
        : Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Personlist(productsModel: productsModel),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: productsModel?.products.length ?? 0,
                    (context, index) {
                      return Chat(product: productsModel!.products[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }
}