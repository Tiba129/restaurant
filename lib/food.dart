import 'package:flutter/material.dart';

class Food {
  final String disc;
  final String img;
  final String id;
  final String price;
  final List<String> idselect;

  const Food({
    @required this.id,
    @required this.disc,
    @required this.img,
    @required this.idselect,
    @required this.price,
  });
}
