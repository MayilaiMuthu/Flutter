import 'package:flutter/material.dart';
import 'package:training_flutter/form/formbody/formfield/formfield.dart';

class FormFieldPage extends StatefulWidget {
  final String name1;
  final String name2;
  final List<String> lists;
  final List<String> lists2;
  final int importantKey1;
  final int importantKey2;
  final TextEditingController input1;
  final TextEditingController input2;
  const FormFieldPage(
      {Key? key,
      required this.name1,
      required this.name2,
      required this.importantKey1,
      required this.importantKey2,
      required this.lists,
      required this.lists2,
      required this.input1,
      required this.input2})
      : super(key: key);

  @override
  State<FormFieldPage> createState() => _FormFieldPageState();
}

class _FormFieldPageState extends State<FormFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FormFieldSeparatePage(
            name: widget.name1,
            list: widget.lists,
            importantKey: widget.importantKey1,
            input: widget.input1),
        FormFieldSeparatePage(
            name: widget.name2,
            list: widget.lists2,
            importantKey: widget.importantKey2,
            input: widget.input2),
      ],
    );
  }
}
// var width = MediaQuery.of(context).size.width;
// var height = MediaQuery.of(context).size.height;
// FormFieldName(name: widget.name1, importantKey: widget.importantKey1),
// //const DropDownSearchPage(),
// //widget.lists.isEmpty ?
// FormFieldBox(
// importantKey: widget.importantKey1,
// textController: widget.input1,
// keyName: widget.name1),
// //: DropDownSearchPage(lists: widget.lists),
// FormFieldName(name: widget.name2, importantKey: widget.importantKey2),
// widget.name2.isNotEmpty
// //? widget.lists2.isEmpty
// ? FormFieldBox(
// textController: widget.input2,
// importantKey: widget.importantKey1,
// keyName: widget.name2)
// // : DropDownSearchPage(lists: widget.lists2)
// : SizedBox(
// height: height * textFieldHeight,
// width: width * textFieldWidth,
// ),
