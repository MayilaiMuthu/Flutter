import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training_flutter/form/constants/constantspage.dart';

class FormFieldBox extends StatefulWidget {
  final int importantKey;
  final String keyName;
  final TextEditingController textController;
  const FormFieldBox(
      {Key? key,
      required this.importantKey,
      required this.keyName,
      required this.textController})
      : super(key: key);

  @override
  State<FormFieldBox> createState() => _FormFieldBoxState();
}

class _FormFieldBoxState extends State<FormFieldBox> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    //bool errValue = false;
    return SizedBox(
      //padding: EdgeInsets.symmetric(vertical: 3),
      height: height * textFieldHeight,
      width: width * textFieldWidth,
      child: TextFormField(
          controller: widget.textController,
          // maxLength: 10,
          //style: TextStyle(height: 1),gfh
          autofocus: false,
          cursorColor: cursorColor,
          validator: (value) {
            if ((value == null || value.isEmpty) && widget.importantKey == 1) {
              //errValue = true;
              //print(errValue);
              print(widget.keyName);
              return '${widget.keyName} is not empty';
            }
            return null;
          },
          decoration: InputDecoration(
            // suffixIcon: Icon(
            //   errorIcon,
            //   color: widget.importantKey == 1 && errValue == true
            //       ? errorIconColor
            //       : transColor,
            // ),
            suffixIcon: GestureDetector(
              onTap: () {
                //errValue = !errValue;
                // controller.isObscureOld.value =
                // !controller.isObscureOld.value;
              },
              child: Icon(
                errorIcon,
                color: widget.importantKey == 1 &&
                        widget.textController.text.isEmpty
                    ? errorIconColor
                    : transColor,
                // !controller.isObscureOld.value
                //     ? Icons.visibility_outlined
                //     : Icons.visibility_off_outlined,
                // size: 26,
                // color: ColorConstants.grayLight,
              ),
            ),
            errorStyle: TextStyle(
              fontSize: height * errorFontSize,
              height: height * errorHeight,
            ),
            //errorText: 'Locale._cachedLocaleString',
            //errorStyle: TextStyle(fontSize: 2),
            isDense: true,
            //filled: true,
            // labelText: '',
            // fillColor: inputFieldColor,
            contentPadding: EdgeInsets.only(
                top: height * textFieldBoxContentHeight,
                left: width * textFieldBoxContentWidth),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: widget.importantKey == 1
                      ? textFieldBorderColor1
                      : textFieldBorderColor2,
                  width: width * textFieldBorderWidth1),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: textFieldBorderColor1,
                width: width * textFieldBorderWidth2,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: textFieldBorderColor1,
                width: width * textFieldBorderWidth2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: textFieldBorderColor1,
                width: width * textFieldBorderWidth1,
              ),
            ),
            border: OutlineInputBorder(
              gapPadding: height * textFieldHeight,
            ),
          )),
    );
  }
}
