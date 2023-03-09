import 'package:flutter/material.dart';
import 'package:training_flutter/form/bankpage/bankpage.dart';
import 'package:training_flutter/form/constants/constantspage.dart';

class FormStartPage extends StatefulWidget {
  const FormStartPage({Key? key}) : super(key: key);

  @override
  State<FormStartPage> createState() => _FormStartPageState();
}

class _FormStartPageState extends State<FormStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(formHead),
      ),
      body: const BankPage(),
      backgroundColor: bgColor,
    );
  }
}
