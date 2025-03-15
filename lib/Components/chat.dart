import 'package:flutter/material.dart';
import 'package:tunes_app/Components/person.dart';
import 'package:tunes_app/models/productsModel.dart';

class Chat extends StatelessWidget {
  final Product product;

  Chat({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Person(product: product),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              Text(
                product.category,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        CircleAvatar(
          radius: 3,
          backgroundColor: Colors.blue,
        ),
      ],
    );
  }
}