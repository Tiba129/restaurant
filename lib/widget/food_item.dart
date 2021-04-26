import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String disc;
  final String im;
  final String id;
  final String pri;

  FoodItem(
      {@required this.disc,
      @required this.id,
      @required this.im,
      @required this.pri});

  void detailSelect(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/detail_screen', arguments: {
      'disc': disc,
      'id': id,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => detailSelect(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 1,
          mainAxisSpacing: 45,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
          physics: ScrollPhysics(),
          children: <Widget>[
            Card(
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
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image(
                          image: AssetImage(
                            im,
                          ),
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        padding: EdgeInsets.fromLTRB(50, 70, 20, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              disc,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              pri,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
