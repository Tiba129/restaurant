import 'package:flutter/material.dart';

class Details {
  final String id;
  final String ig;
  final String discrp;
  final String prc;
  final List<String> detId;

  const Details({
    @required this.id,
    @required this.ig,
    @required this.discrp,
    @required this.detId,
    @required this.prc,
  });
}
