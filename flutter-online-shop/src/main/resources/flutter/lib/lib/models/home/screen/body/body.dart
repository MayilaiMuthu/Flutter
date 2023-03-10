import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';
import 'package:online_shop/models/home/screen/body/categories.dart';
import 'package:online_shop/models/home/screen/body/itemcards.dart';
import 'package:online_shop/models/home/screen/details/components/detailscreen.dart';

class ScreenBody extends StatefulWidget {
  const ScreenBody({Key? key}) : super(key: key);

  @override
  State<ScreenBody> createState() => _ScreenBodyState();
}

class _ScreenBodyState extends State<ScreenBody> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.02),
          child: Text(
            'College Bags',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: width * 0.07,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: width * 0.01,
                    mainAxisSpacing: height * 0.01),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        )
      ],
    );
  }
}
