import 'package:flutter/material.dart';
import 'package:tunes_app/Components/person.dart';
import 'package:tunes_app/models/productsModel.dart';

class Personlist extends StatelessWidget {
  final ProductsModel? productsModel;

  Personlist({super.key, required this.productsModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            productsModel?.products.length ?? 0,
            (index) => Person(product: productsModel!.products[index]),
          ),
        ),
      ),
    );
  }
}