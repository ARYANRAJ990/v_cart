import 'package:flutter/src/widgets/image.dart';

class Product {
  late int id;
 // late String status;
  late String description;
  late String name;
  late String category;
  late String image; // Store image URL as a String
  late double price;
  late int quantity;

  Product({
    required this.id,
  //  required this.status,
    required this.description,
    required this.name,
    required this.price,
    required this.image, // Pass image URL as a String
    required this.category,
    required this.quantity,
  });
}
