import 'package:flutter/material.dart';

class DetailItem extends StatelessWidget {
  final String img;
  final String id;
  final String disc;
  final String price;

  const DetailItem({
    @required this.id,
    @required this.img,
    @required this.disc,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                price,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 15, top: 10),
              child: Text(disc,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
