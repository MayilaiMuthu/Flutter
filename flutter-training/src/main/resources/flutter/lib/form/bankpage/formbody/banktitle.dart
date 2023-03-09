import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';

class BankHead extends StatefulWidget {
  const BankHead({Key? key}) : super(key: key);

  @override
  State<BankHead> createState() => _BankHeadState();
}

class _BankHeadState extends State<BankHead> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          top: height * bankHeadPaddingHeight,
          left: width * bankHeadPaddingWidth),
      // padding: EdgeInsets.symmetric(
      //     vertical: height * bankHeadPaddingHeight,
      //     horizontal: width * bankHeadPaddingWidth),
      child: Row(
        children: [
          Text(bankHead1,
              style: TextStyle(
                  color: bankHeadColor1, fontSize: height * fontSize)),
          Text(bankHead2,
              style: TextStyle(
                  color: bankHeadColor2, fontSize: height * fontSize)),
        ],
      ),
    );
  }
}
