import 'package:flutter/material.dart';
import 'package:resturant_app/screen/categories_meal_screen.dart';
import 'screen/categories_screen.dart';
import 'screen/food_screen.dart';
import 'screen/detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',
      ),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoriesmealScreen.routename: (ctx) => CategoriesmealScreen(),
        FoodScreen.routename2: (ctx) => FoodScreen(),
        '/detail_screen': (ctx) => DetailsScreen(),
      },
    );
  }
}
