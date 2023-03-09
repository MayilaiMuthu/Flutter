import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';

class ButtonPage extends StatefulWidget {
  final Function() onPressed;
  final String name;
  final Color? buttonColor;
  final Color? textColor;
  final Color borderColor;
  const ButtonPage(
      {Key? key,
      required this.onPressed,
      required this.name,
      this.buttonColor,
      required this.textColor,
      required this.borderColor})
      : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List list = widget.name.split('');
    int listLength = list.length;
    return Padding(
      padding: EdgeInsets.only(left: width * buttonPaddingWidth),
      child: Container(
        height: height * buttonHeight,
        width: width * buttonWidth * listLength,
        decoration: BoxDecoration(
          color: widget.buttonColor,
          border: Border.all(
            color: widget.borderColor,
          ),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              widget.buttonColor,
            ),
          ),
          onPressed: widget.onPressed,
          child: Text(
            widget.name,
            style: TextStyle(
              fontSize: height * fontSize,
              color: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
