import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/home/screen/details/components/detailscreen.dart';
import 'package:online_shop/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => {
        DetailScreen(
          product: product,
        )
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: height * 0.22,
              width: width * 0.4,
              padding: EdgeInsets.all(width * 0.01),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(width * 0.06)),
              child: Image.asset(product.image),
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(color: textLightColor),
          ),
          Text('\$${product.price}',
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
