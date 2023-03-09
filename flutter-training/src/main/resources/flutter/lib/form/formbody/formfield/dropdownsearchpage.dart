import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:training_flutter/form/constants/constantspage.dart';

class DropDownSearchPage extends StatefulWidget {
  final List<String> lists;
  final TextEditingController textController;
  const DropDownSearchPage(
      {Key? key, required this.lists, required this.textController})
      : super(key: key);

  @override
  State<DropDownSearchPage> createState() => _DropDownSearchPageState();
}

class _DropDownSearchPageState extends State<DropDownSearchPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
        width: width * textFieldWidth,
        height: height * (textFieldHeight - textFieldBoxContentHeight),
        child: DropdownSearch<String>(
          popupProps: const PopupProps.menu(
            showSelectedItems: true,
            //disabledItemFn: (String s) => s.startsWith('I'),
          ),
          items: widget.lists,
          validator: (value) {
            if (value != null) {
              widget.textController.text = value!;
            }
          },
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              //labelText: '-- Select --',

              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                  vertical: height * textFieldBoxContentHeight,
                  horizontal: width * textFieldBoxContentWidth),
              border: const OutlineInputBorder(),
              //labelText: "Menu mode",
              //hintText: "country in menu mode",
            ),
          ),
          onChanged: print,
          //selectedItem: "-- Select --",
        ));
  }
}
