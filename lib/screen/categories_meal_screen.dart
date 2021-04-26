import 'package:flutter/material.dart';
import 'package:resturant_app/dummy_data.dart';
import 'package:resturant_app/widget/meal_item.dart';

class CategoriesmealScreen extends StatelessWidget {
  static final routename = '/categories_meal_screen';

  @override
  Widget build(BuildContext context) {
    final routargs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categorytitle = routargs['title'];
    final categoryid = routargs['id'];
    final meals = Dummy_meals.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            categorytitle,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: GridView.builder(
          padding: EdgeInsets.only(top: 15),
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () => CategoriesmealScreen,
              child: Mealitem(
                title: meals[index].title,
                color: meals[index].color,
                id: meals[index].id,
              ),
            );
          },
          itemCount: meals.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 12 / 12,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ));
  }
}
