import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app_firsttry/homeScreen/component/bodyHomeScreen.dart';

class AddToChart extends StatefulWidget {
  AddToChart({Key key}) : super(key: key);

  @override
  _AddToChartState createState() => _AddToChartState();
}

class _AddToChartState extends State<AddToChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              width: 45,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: product.color,
                ),
              ),
              child: CupertinoButton(
                padding: EdgeInsets.all(0),
                onPressed: () => print(""),
                child: Container(
                  child: SvgPicture.asset(
                    'assets/icons/add_to_cart.svg',
                    color: product.color,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(15),
                ),
                width: 45,
                height: 45,
                child: CupertinoButton(
                  padding: EdgeInsets.all(0),
                  //borderRadius:BorderRadius.circular(15) ,

                  onPressed: () => print(""),
                  child: Text(
                    "Buy Now".toUpperCase(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        // fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                    // onPressed: () => print(""),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
