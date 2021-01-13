import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app_firsttry/data/colorsDot.dart';
import 'package:shopping_app_firsttry/data/constans.dart';


buildAppBar(BuildContext context, int screenNumber,Color screenColor) {
  return AppBar(

    backgroundColor: screenColor,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back.svg",
      color: (screenNumber ==0)?blackColor:whiteColor ,),
      onPressed: () {
        if (screenNumber != 0) {
          Navigator.of(context).pop();
        }
      },
    ),
    actions: [
      buildIcons(screenNumber),



    ],
  );
}

buildIcons( int screenNumber){
  return  Row(
    mainAxisSize: MainAxisSize.max,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg',
            color:  (screenNumber ==0)?blackColor:whiteColor,),
            onPressed: ()=>print("")),
      ),
      Stack(
        alignment: Alignment(.65,1),
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: SvgPicture.asset('assets/icons/cart.svg',
                  color:  (screenNumber ==0)?blackColor:whiteColor,),
                onPressed: ()=>print("")),
          ),
            Align(

            alignment: Alignment(1,-.7),
            child: Container(
                width: 20,
                height: 20,
                child: ColorDot(color: Colors.red,isSelected: false)),

          ),

        ],
      ),

    ],
  );
}
