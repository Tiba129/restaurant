import 'package:flutter/material.dart';
import 'package:resturant_app/dummy_data.dart';
import 'package:resturant_app/widget/detail_item.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final routargs3 =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryid3 = routargs3['id'];
    final det = Dummy_details.where((d) {
      return d.detId.contains(categoryid3);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'تفاصيل المنتج',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: GridView.builder(
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: () => DetailsScreen,
              child: DetailItem(
                disc: det[index].discrp,
                id: det[index].id,
                img: det[index].ig,
                price: det[index].prc,
              ),
            );
          },
          itemCount: det.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 12 / 12,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ));
  }
}
