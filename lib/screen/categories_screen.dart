import 'package:flutter/material.dart';
import 'package:resturant_app/widget/category_item.dart';
import 'package:resturant_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: 200,
        padding: EdgeInsets.fromLTRB(90, 30, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'الصفحة الرئيسية',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      InkWell(
        onTap: () => CategoriesScreen,
        child: GridView(
          padding: EdgeInsets.fromLTRB(20, 90, 20, 20),
          children: Dummy_Categories.map((catData) => CategoryItem(
                title: catData.title,
                id: catData.id,
                image: catData.img,
              )).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 5 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    ]));
  }
}
