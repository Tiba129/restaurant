import 'package:flutter/material.dart';
import 'package:resturant_app/screen/categories_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  final String image;
  CategoryItem(
      {this.color, @required this.id, this.image, @required this.title});

  // ignore: non_constant_identifier_names
  void Selectcategory(BuildContext ctx) {
    {
      Navigator.of(ctx).pushNamed(CategoriesmealScreen.routename,
          arguments: {'id': id, 'title': title});
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Selectcategory(context),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
