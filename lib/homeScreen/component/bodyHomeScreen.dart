import 'package:flutter/material.dart';
import 'package:shopping_app_firsttry/data/products.dart';
import 'package:shopping_app_firsttry/productDetails/productDetail.dart';

import '../../data/constans.dart';
int firstValue=0;
var product = images[0];
Future intial () async {

   if(firstValue==0) {
    Future.delayed(Duration(seconds: 1));
    firstValue = 1;
  }
}
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    intial() ;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2.5),
        // padding: EdgeInsets.all(defaultPadding / 4),
        child:(firstValue==1)? Container(
          padding: EdgeInsets.only(bottom: 25),
          child:
              GridView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index) =>
                    Container(

                      child: Column(

                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    product = images[index];//to make instance then pass it to the secong screen

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ProductDetails(
                                            product: product,
                                          ),
                                        ));
                                  },
                                  child: Container(

                                    child: Padding(
                                      padding:
                                          const EdgeInsets.all(defaultPadding / 2),
                                      child: Hero(
                                        tag: "${images[index].imageID}",
                                        child: Image.asset(
                                          images[index]
                                              .imageName, //fit: BoxFit.cover,
                                        ),

                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: images[index].color,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defaultPadding / 4, horizontal: 5),
                                child: Text(
                                  // products is out demo list
                                  images[index].title,
                                  style: TextStyle(color: ligtBlack),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "\$${images[index].price}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),

                  ),
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: defaultPadding,
                      crossAxisSpacing: defaultPadding / 2,
                      childAspectRatio: 0.75,
                      crossAxisCount: 2)),
        ):Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
