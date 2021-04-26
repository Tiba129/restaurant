import 'package:flutter/material.dart';

class Meal {
  final String id;
  final String title;
  final List<String> categories;
  final String image;
  final Color color;
  const Meal(
      {@required this.id,
      @required this.title,
      this.image,
      @required this.color,
      @required this.categories});
}
