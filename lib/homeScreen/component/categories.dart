import 'package:flutter/material.dart';
import '../../data/constans.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}
var selectedItem = 0;
final categories = ['Hand bag', 'Jewellery', 'Footwear', 'Dresses'];
class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: SizedBox(
        height: 25,
        child: buildListView(),
      ),
    );
  }

  buildListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 1),
        child: GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: (selectedItem == index) ? Colors.black : ligtBlack,
                  )),
              Container(
                margin:
                    EdgeInsets.only(top: defaultPadding / 4), //top padding 5
                height: 2,
                width: 30,
                color:
                    (selectedItem == index) ? Colors.black : Colors.transparent,
              )
            ],
          ),
          onTap: () {

            setState(() {
              selectedItem = index;
            });
          },
        ),
      ),
    );
  }
}
