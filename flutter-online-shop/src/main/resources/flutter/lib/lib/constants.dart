import 'package:flutter/material.dart';
import 'package:online_shop/models/product.dart';

const textLightColor = Color(0xFFACACAC);
const textNormalColor = Color(0xFF535353);

List<Product> products = [
  Product('assets/images/1.png', 'First Bag', dummyText, '1', '50', '50',
      Colors.green),
  Product('assets/images/4.png', 'Second Bag', dummyText, '2', '150', '40',
      Colors.deepPurple),
  Product('assets/images/2.png', 'Third Bag', dummyText, '3', '250', '50',
      Colors.yellowAccent),
  Product('assets/images/3.png', 'Fourth Bag', dummyText, '4', '350', '40',
      Colors.lightBlueAccent),
  Product('assets/images/4.png', 'Fifth Bag', dummyText, '5', '450', '50',
      Colors.greenAccent),
  Product('assets/images/1.png', 'Sixth Bag', dummyText, '6', '550', '40',
      Colors.deepOrange),
  Product('assets/images/2.png', 'Fourth Bag', dummyText, '7', '650', '50',
      Colors.indigo),
  Product('assets/images/3.png', 'Third Bag', dummyText, '8', '750', '40',
      Colors.tealAccent),
  Product('assets/images/4.png', 'Second Bag', dummyText, '9', '850', '50',
      Colors.grey),
  Product('assets/images/2.png', 'First Bag', dummyText, '10', '950', '40',
      Colors.brown)
];

const String dummyText =
    'A bag is a kind of soft container. It can hold or carry things. '
    'It may be made from cloth, leather, plastic, or paper. Many '
    'bags are disposable but some are made to use for a long time. '
    'A bag may have one or two handles or a shoulder strap. Bags '
    'come in different shapes and sizes depending on how they will be used';

const List<String> categories = ['Adult', 'Kids', 'Men', 'Women'];
