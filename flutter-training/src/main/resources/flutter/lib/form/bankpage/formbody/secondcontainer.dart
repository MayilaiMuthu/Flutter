import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';
import 'package:training_flutter/form/formbody/formfield/formfieldrow.dart';

class SecondContainerPage extends StatefulWidget {
  final int rowValue;
  final int startValue;
  const SecondContainerPage(
      {Key? key, required this.rowValue, required this.startValue})
      : super(key: key);

  @override
  State<SecondContainerPage> createState() => _SecondContainerPageState();
}

class _SecondContainerPageState extends State<SecondContainerPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    int startValue = widget.startValue;
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
          for (var i = 0; i < widget.rowValue; i++)
            FormFieldPage(
                input1: addBankInputList[startValue],
                name1: addBankFieldList[startValue++],
                name2: i == widget.rowValue - 1
                    ? ''
                    : addBankFieldList[startValue],
                input2: i == widget.rowValue - 1
                    ? TextEditingController()
                    : addBankInputList[startValue++],
                lists: const [],
                lists2: const [],
                importantKey1: 0,
                importantKey2: 0),
        ],
      ),
    );
  }
}
