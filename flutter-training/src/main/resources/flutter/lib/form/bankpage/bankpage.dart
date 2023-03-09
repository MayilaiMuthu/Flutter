import 'package:flutter/material.dart';
import 'package:training_flutter/form/bankpage/formbody/banktitle.dart';
import 'package:training_flutter/form/constants/constantspage.dart';
import 'package:training_flutter/form/formbody/formpage.dart';

class BankPage extends StatefulWidget {
  const BankPage({Key? key}) : super(key: key);

  @override
  State<BankPage> createState() => _BankPageState();
}

class _BankPageState extends State<BankPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(
          height: height * containerSpaceHeight,
        ),
        const BankHead(),
        SizedBox(
          height: height * containerSpaceHeight,
        ),
        const FormPage(),
      ],
    );
  }
}
