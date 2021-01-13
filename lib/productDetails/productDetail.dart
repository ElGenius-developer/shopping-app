import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app_firsttry/data/appBar.dart';
import 'package:shopping_app_firsttry/data/products.dart';
import 'package:shopping_app_firsttry/homeScreen/component/bodyHomeScreen.dart';
import 'package:shopping_app_firsttry/productDetails/DetailsScreenItems/add_to_chart.dart';
import 'DetailsScreenItems/Image_And_Price_of_item.dart';
import 'DetailsScreenItems/color_and_size_row.dart';
import 'DetailsScreenItems/itemCounters.dart';
import 'DetailsScreenItems/item_title.dart';
import 'DetailsScreenItems/whiteCard.dart';

var selectedColor = false;

// ignore: must_be_immutable
class ProductDetails extends StatefulWidget {
  final product;

  const ProductDetails({this.product});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var colorsList = [images[0].color, images[1].color, images[2].color];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
     home:  Container(
       height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
       child: Scaffold(
           backgroundColor: widget.product.color,
           appBar: buildAppBar(context, 1, widget.product.color),
           body: Container(



               padding: const EdgeInsets.symmetric(vertical: 0),
             child: Stack(

               children: [

                 //header and item title
                 itemTitle(context),
                 //The White card on the button
                 whiteCard(context),
                 //the row has Item and Its Price
                 SingleChildScrollView(
                   scrollDirection: Axis.vertical,
                   // padding: EdgeInsets.all(2),

                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       SizedBox(
                         height: MediaQuery.of(context).size.height * .15,
                       ),
                       imageAndPrice(context),
                       colorAndSizeRow(),
                       //item description
                       Padding(
                         padding:
                         const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                         child: Text(
                           '${widget.product.description}',
                           maxLines: 8,
                           overflow: TextOverflow.fade,
                           style: TextStyle(
                             fontStyle: FontStyle.italic,
                             height: 1.5,
                           ),
                         ),
                       ),
                       ItemCounters(),
                       SizedBox(
                         height: 8,
                       ),
                       AddToChart()


                     ],
                   ),
                 ),
               ],
             ),
           ),

       ),
     ),

    );
  }
}
