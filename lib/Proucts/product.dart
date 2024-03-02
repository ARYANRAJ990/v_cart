import 'package:flutter/src/widgets/image.dart';

class Product {
  late  int id;
  late String name;
  late String category;
  late String image;
  late double price;
  late int quantity;

  Product( {required int id, required String name, required double price, required Image image, required String category, required int quantity});
}
