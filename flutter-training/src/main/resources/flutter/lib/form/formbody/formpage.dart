import 'package:flutter/material.dart';
import 'package:training_flutter/form/bankpage/formbody/addbankbuttons.dart';
import 'package:training_flutter/form/bankpage/formbody/firstcontainer.dart';
import 'package:training_flutter/form/bankpage/formbody/secondcontainer.dart';
import 'package:training_flutter/form/constants/constantspage.dart';
import 'package:training_flutter/form/formbody/formfield/formbuttonpage.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          const FirstContainerPage(),
          SizedBox(
            height: height * containerSpaceHeight,
          ),
          const SecondContainerPage(),
          SizedBox(
            height: height * containerSpaceHeight,
          ),
          SizedBox(
              width: width * bankContainerWidth,
              child: AddBankButtonsPage(formKey: formKey)),
          SizedBox(
            height: height * containerSpaceHeight,
          ),
        ],
      ),
    );
  }
}
