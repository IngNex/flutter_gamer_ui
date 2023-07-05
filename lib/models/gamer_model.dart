import 'package:flutter/material.dart';

class Position {
  final String position;
  Position({
    required this.position,
  });
}

class ImageAccessories {
  final List<Position> image;
  final Color color;
  ImageAccessories({
    required this.image,
    required this.color,
  });
}

class Accessories {
  final String name;
  final double price;
  final String category;
  final int punctuation;
  final List<ImageAccessories> listImage;
  Accessories({
    required this.name,
    required this.price,
    required this.category,
    required this.punctuation,
    required this.listImage,
  });
}
