import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_firsttry/data/constans.dart';
import 'package:shopping_app_firsttry/homeScreen/component/bodyHomeScreen.dart';
import 'package:shopping_app_firsttry/homeScreen/component/categories.dart';

itemTitle(BuildContext context)
    {


  return  Align(
    alignment: Alignment.topLeft,
    child: Padding(
          padding: EdgeInsets.all(defaultPadding / 1.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 8),
                child: Text(
                  "Aristocratic ${categories[selectedItem]}",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Item Header
              Padding(
                padding: const EdgeInsets.only( left: 8),
                child: Text(
                  '${product.title}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5
                      .copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 30),
                ),
              )
            ],
          ),
        ),
  );
    }