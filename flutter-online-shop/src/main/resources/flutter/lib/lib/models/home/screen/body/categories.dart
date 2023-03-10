import 'package:flutter/material.dart';
import 'package:online_shop/constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedVal = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.07,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              buildCategories(index, width, height)),
    );
  }

  Widget buildCategories(int index, var width, var height) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedVal = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.04,
                  color:
                      selectedVal == index ? textNormalColor : textLightColor),
            ),
            Container(
              padding: EdgeInsets.only(top: height * 0.01),
              height: height * 0.0025,
              width: width * 0.2,
              color: selectedVal == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
