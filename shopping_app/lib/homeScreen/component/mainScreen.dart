import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app_firsttry/data/constans.dart';
import 'package:shopping_app_firsttry/homeScreen/component/bodyHomeScreen.dart';
import '../../data/appBar.dart';
import 'categories.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: blackColor)),
      debugShowCheckedModeBanner: false,
      title: "Shopping App",
      home: Scaffold(
        appBar: buildAppBar(context, 0, whiteColor),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    "Women",
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                )),
            Categories(),
            SizedBox(height: defaultPadding),
            Body(),
          ],
        ),
      ),
    );
  }
}
