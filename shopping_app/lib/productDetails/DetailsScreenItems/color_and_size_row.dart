import 'package:flutter/material.dart';
import 'package:shopping_app_firsttry/data/colorsDot.dart';
import 'package:shopping_app_firsttry/data/products.dart';
import 'package:shopping_app_firsttry/homeScreen/component/bodyHomeScreen.dart';


colorAndSizeRow(){


  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child:  Row(
        children: [
          //Color Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //**** Colors column
            children: [
              Padding(
                padding: const EdgeInsets.only(left :15),
                child: Text('Color'),
              ),
              Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,),
                    child: ColorDot(color: product.color,isSelected: true
                    ),
                  ),

                  ColorDot(color:  colors[1],isSelected: false

                  ),
                  ColorDot(color: colors[2],isSelected: false),

                ],
              ),

            ],
          ),
          // Padding(padding: EdgeInsets.only(left: 30)),
          SizedBox(width: 90,),
          //Size Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Size'),
              Text('${product.size} cm',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),

            ],
          ),


        ]
    ),

  );

}
