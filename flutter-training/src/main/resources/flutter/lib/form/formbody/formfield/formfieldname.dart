import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';

class FormFieldName extends StatefulWidget {
  final String name;
  final int importantKey;
  const FormFieldName(
      {Key? key, required this.name, required this.importantKey})
      : super(key: key);

  @override
  State<FormFieldName> createState() => _FormFieldNameState();
}

class _FormFieldNameState extends State<FormFieldName> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * textFieldBoxWidth,
      height: height * textFieldBoxHeight,
      child: widget.importantKey == 0
          ? Text(
              widget.name,
              style: TextStyle(fontSize: height * fontSize),
            )
          : RichText(
              text: TextSpan(
                //text:  widget.name,
                //style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: widget.name,
                    style: TextStyle(
                        color: importantTextColor, fontSize: height * fontSize),
                  ),
                  TextSpan(
                    text: important,
                    style: TextStyle(
                        color: importantColor, fontSize: height * fontSize),
                  ),
                ],
              ),
            ),
    );
  }
}
