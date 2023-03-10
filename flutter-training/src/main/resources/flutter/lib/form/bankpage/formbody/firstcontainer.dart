import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';
import 'package:training_flutter/form/formbody/formfield/formfieldrow.dart';

class FirstContainerPage extends StatefulWidget {
  final int rowValue;
  final int startValue;
  const FirstContainerPage(
      {Key? key, required this.rowValue, required this.startValue})
      : super(key: key);

  @override
  State<FirstContainerPage> createState() => _FirstContainerPageState();
}

class _FirstContainerPageState extends State<FirstContainerPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      // padding: EdgeInsets.symmetric(
      //     vertical: height * bankHeadPaddingHeight,
      //     horizontal: width * bankHeadPaddingWidth),
      height: height * bankContainerHeight * widget.rowValue,
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
              input1: addBankInputList[0],
              input2: addBankInputList[1],
              lists: const [],
              lists2: const [],
              name1: addBankFieldList[0],
              name2: addBankFieldList[1],
              importantKey1: 1,
              importantKey2: 1),
          FormFieldPage(
              input1: addBankInputList[2],
              input2: addBankInputList[3],
              lists: const [],
              lists2: const [],
              name1: addBankFieldList[2],
              name2: addBankFieldList[3],
              importantKey1: 0,
              importantKey2: 0),
          FormFieldPage(
              input1: addBankInputList[4],
              input2: addBankInputList[5],
              lists: const [],
              lists2: const [],
              name1: addBankFieldList[4],
              name2: addBankFieldList[5],
              importantKey1: 0,
              importantKey2: 0),
          FormFieldPage(
              input1: addBankInputList[6],
              input2: addBankInputList[7],
              name1: addBankFieldList[6],
              name2: addBankFieldList[7],
              importantKey1: 0,
              lists2: countryList,
              lists: const [],
              importantKey2: 0),
          FormFieldPage(
            input1: addBankInputList[8],
            input2: TextEditingController(),
            lists: countryList,
            name1: addBankFieldList[8],
            name2: '',
            importantKey1: 0,
            importantKey2: 0,
            lists2: const [],
          ),
        ],
      ),
    );
  }
}
// for (var i = 9; i < 17; i + 2)
// FormFieldPage(
// input1: addBankInputList[i],
// input2: addBankInputList[i + 1] == null
// ? TextEditingController()
//     : addBankInputList[i + 1],
// lists: const [],
// lists2: const [],
// name1: addBankFieldList[i],
// name2: addBankFieldList[i + 1] == null
// ? ''
//     : addBankFieldList[i + 1],
// importantKey1: 0,
// importantKey2: 0),
