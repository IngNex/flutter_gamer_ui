import 'package:flutter/material.dart';

class ImageAccessories {
  final String image;
  final Color color;
  ImageAccessories({
    required this.image,
    required this.color,
  });
}

class Accessories {
  final String name;
  final double price;
  final int punctuation;
  final List<ImageAccessories> listImage;
  Accessories({
    required this.name,
    required this.price,
    required this.punctuation,
    required this.listImage,
  });
}
