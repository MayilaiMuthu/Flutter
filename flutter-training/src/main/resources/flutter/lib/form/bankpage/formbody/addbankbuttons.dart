import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';
import 'package:training_flutter/form/formbody/formfield/formbuttonpage.dart';

class AddBankButtonsPage extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const AddBankButtonsPage({Key? key, required this.formKey}) : super(key: key);

  @override
  State<AddBankButtonsPage> createState() => _AddBankButtonsPageState();
}

class _AddBankButtonsPageState extends State<AddBankButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ButtonPage(
          onPressed: () {
            if (widget.formKey.currentState!.validate()) {
              for (var i in addBankInputList) {
                print(i.text);
              }
              // TODO submit
            }
          },
          name: bankMasterButtonList[0],
          borderColor: buttonBorderColor,
          buttonColor: buttonColor1,
          textColor: buttonBorderColor,
        ),
        ButtonPage(
          onPressed: () {
            if (widget.formKey.currentState!.validate()) {
              // TODO submit
            }
          },
          name: bankMasterButtonList[1],
          borderColor: buttonBorderColor,
          buttonColor: buttonColor1,
          textColor: buttonBorderColor,
        ),
        ButtonPage(
          onPressed: () {},
          name: bankMasterButtonList[2],
          borderColor: closeButtonColor,
          buttonColor: closeButtonColor,
          textColor: buttonBorderColor1,
        ),
      ],
    );
  }
}
