import 'package:flutter/material.dart';

class Product {
  final String title, discription;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool inFavourite, isPopular;

  Product({
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.inFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.discription,
  });
}

//demo product
