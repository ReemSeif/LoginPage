import 'package:dio/dio.dart';
import 'package:tunes_app/models/productsModel.dart';

class ApiProvider {
  final String baseUrl = "https://dummyjson.com";

  ProductsModel? productsModel;

  Future<ProductsModel?> getProducts() async {
    try {
      Response response = await Dio().get("$baseUrl/products");
      print("API Response: ${response.data.toString()}");
      productsModel = ProductsModel.fromJson(response.data);
      print("First Product Title: ${productsModel?.products[0].title}");
      return productsModel;
    } catch (e) {
      print("Error: ${e.toString()}");
      return null; // Ensure a value is returned in case of an exception
    }
  }
}