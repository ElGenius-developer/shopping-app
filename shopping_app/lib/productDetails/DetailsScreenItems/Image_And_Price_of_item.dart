import 'package:flutter/material.dart';
import 'package:shopping_app_firsttry/data/constans.dart';
import 'package:shopping_app_firsttry/homeScreen/component/bodyHomeScreen.dart';

imageAndPrice(BuildContext context) {
  return Align(
    alignment: Alignment.bottomRight,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          //  padding: const EdgeInsets.only(top: defaultPadding*5,right: 15),
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Align(
              alignment: Alignment(1, -.5),
              child: Container(
                height: MediaQuery.of(context).size.height/3.2  ,
                // width: MediaQuery.of(context).size.width/2 +25,

                child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: defaultPadding * 1.5,
                          right: defaultPadding * 2),
                      child: Container(
                        height: 60,
                        width: 60,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(color: whiteColor),
                            ),
                            Text(
                              "\$${product.price}",
                              style: TextStyle(
                                fontSize: defaultPadding + 5,
                                color: whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Hero(
                        tag: "${product.imageID}",
                        child: Image.asset(
                          product.imageName,
                         fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
