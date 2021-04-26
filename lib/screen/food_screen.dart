import 'package:flutter/material.dart';
import 'package:resturant_app/widget/food_item.dart';
import 'package:resturant_app/dummy_data.dart';

class FoodScreen extends StatelessWidget {
  static final routename2 = '/food_screen';

  @override
  Widget build(BuildContext context) {
    final routargs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryid2 = routargs['id'];
    final food = Dummy_food.where((foo) {
      return foo.idselect.contains(categoryid2);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'المنتجات',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: GridView.builder(
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () => FoodScreen,
              child: FoodItem(
                disc: food[index].disc,
                id: food[index].id,
                im: food[index].img,
                pri: food[index].price,
              ),
            );
          },
          itemCount: food.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 8 / 11,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ));
  }
}
