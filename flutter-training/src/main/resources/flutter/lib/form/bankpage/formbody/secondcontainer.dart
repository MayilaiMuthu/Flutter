import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';
import 'package:training_flutter/form/formbody/formfield/formfieldrow.dart';

class SecondContainerPage extends StatefulWidget {
  const SecondContainerPage({Key? key}) : super(key: key);

  @override
  State<SecondContainerPage> createState() => _SecondContainerPageState();
}

class _SecondContainerPageState extends State<SecondContainerPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      // padding: EdgeInsets.symmetric(
      //     vertical: height * bankHeadPaddingHeight,
      //     horizontal: width * bankHeadPaddingWidth),
      height: height * bankContainerHeight * 4,
      width: width * bankContainerWidth,
      decoration: BoxDecoration(
        color: containerColor,
        border: Border.all(
          color: containerBorderColor,
        ),
        borderRadius:
            BorderRadius.all(Radius.circular(width * containerCircleRadius)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FormFieldPage(
              input1: addBankInputList[9],
              input2: addBankInputList[10],
              lists: const [],
              lists2: const [],
              name1: addBankFieldList[9],
              name2: addBankFieldList[10],
              importantKey1: 0,
              importantKey2: 0),
          FormFieldPage(
              input1: addBankInputList[11],
              input2: addBankInputList[12],
              lists: const [],
              lists2: const [],
              name1: addBankFieldList[11],
              name2: addBankFieldList[12],
              importantKey1: 0,
              importantKey2: 0),
          FormFieldPage(
              input1: addBankInputList[13],
              input2: addBankInputList[14],
              lists: const [],
              lists2: const [],
              name1: addBankFieldList[13],
              name2: addBankFieldList[14],
              importantKey1: 0,
              importantKey2: 0),
          FormFieldPage(
              input1: addBankInputList[15],
              input2: TextEditingController(),
              lists: const [],
              lists2: const [],
              name1: addBankFieldList[15],
              name2: '',
              importantKey1: 0,
              importantKey2: 0),
        ],
      ),
    );
  }
}
