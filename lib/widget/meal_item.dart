import 'package:flutter/material.dart';
import 'package:resturant_app/screen/food_screen.dart';

class Mealitem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  final String image;
  final String disc;

  const Mealitem({
    @required this.id,
    this.image,
    this.disc,
    @required this.color,
    @required this.title,
  });

  // ignore: non_constant_identifier_names
  void Foodselect(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(FoodScreen.routename2,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Foodselect(context),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            mainAxisSpacing: 45,
            crossAxisSpacing: 20,
            childAspectRatio: 1,
            physics: ScrollPhysics(),
            children: <Widget>[
              Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                elevation: 4,
                margin: EdgeInsets.all(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: double.infinity,
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        Center(
                            child: Text(
                          title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                      ],
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
