import 'package:flutter/material.dart';
String details=   "Lorem Ipsum is simply dummy text of the printing and "
    "typesetting industry. Lorem Ipsum has been the "
    "industry's standard dummy text ever since. When an "
    "unknown printer took a galley.";



class Products{

  int imageID;
  int price;
  String imageName;
  Color color;
  String title;
  String description;
  int size;


  Products({int id, int price , String image,Color color ,String title ,String description ,int size }){
    this.imageID =id;
    this.price=price;
    this.imageName =image;
    this.color=color;
    this.title=title;
    this.description=description;
    this.size=size;


  }
}
List <Products> images =
[
  Products(
    image: "assets/images/bag_1.png",
    title: "Office Code",
    id: 0,
    size: 12,
    description: details,
    color: Color(0xFF3d82ae),
    price: 234,
  ),
  Products(
    image: 'assets/images/bag_2.png',
    title: "Belt Bag",
    id: 1,
    size: 11,
    description: details,
    color: Color(0xFFd1a782),
    price: 234,
  ),
  Products(
    image: 'assets/images/bag_3.png',
    title: "Hang Top",
    size: 12,
    description: details,
    id: 2,
    color: Color(0xFF989493),
    price: 234,
  ),
  Products(
    image: 'assets/images/bag_4.png',
    title: "Old Fashion",
    id: 3,
    size: 13,
    description: details,
    color: Color(0xFFe3b096),
    price: 234,
  ),
  Products(
    image: 'assets/images/bag_5.png',
    title : "Office Code",
    size: 11,
    description: details,
    id: 4,
    color: Color(0xFFe5555d),
    price: 234,
  ),
  Products(
    image: "assets/images/bag_6.png",
    title : "Office Code",
    size: 12,
    description: details,
    id: 5,
    color: Color(0xFF989493),
    price: 234,
  ),

];
List colors=[
  images[0].color,
  images[1].color,
  images[2].color,
  images[3].color,
  images[4].color,
  images[5].color,

];