import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';
import 'package:training_flutter/form/formbody/formfield/dropdownsearchpage.dart';
import 'package:training_flutter/form/formbody/formfield/formfieldbox.dart';
import 'package:training_flutter/form/formbody/formfield/formfieldname.dart';

class FormFieldSeparatePage extends StatefulWidget {
  final String name;
  final List<String> list;
  final int importantKey;
  final TextEditingController input;
  const FormFieldSeparatePage(
      {Key? key,
      required this.name,
      required this.list,
      required this.importantKey,
      required this.input})
      : super(key: key);

  @override
  State<FormFieldSeparatePage> createState() => _FormFieldSeparatePageState();
}

class _FormFieldSeparatePageState extends State<FormFieldSeparatePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        FormFieldName(name: widget.name, importantKey: widget.importantKey),
        widget.name.isNotEmpty
            ? widget.list.isEmpty
                ? FormFieldBox(
                    textController: widget.input,
                    importantKey: widget.importantKey,
                    keyName: widget.name)
                : DropDownSearchPage(
                    lists: widget.list,
                    textController: widget.input,
                  )
            : SizedBox(
                height: height * textFieldHeight,
                width: width * textFieldWidth,
              ),
      ],
    );
  }
}
