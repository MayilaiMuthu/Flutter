import 'package:flutter/material.dart';

String formHead = 'Form';
Color? bgColor = Colors.grey[50];
double containerSpaceHeight = 0.03;
double bankHeadPaddingWidth = 0.1;
double bankHeadPaddingHeight = 0.01;
String bankHead1 = 'Bank - ';
String bankHead2 = 'Add Bank';
Color bankHeadColor1 = Colors.black;
Color bankHeadColor2 = Colors.deepPurpleAccent;
double fontSize = 0.019;
double errorFontSize = 0.015;
double errorHeight = 0.0005;
Color buttonBorderColor = Colors.blue;
Color buttonBorderColor1 = Colors.white;
Color? buttonColor1 = bgColor;
Color closeButtonColor = Colors.red;
double bankContainerWidth = 0.82;
double bankContainerHeight = 0.08;
Color containerColor = Colors.white;
Color containerBorderColor = Colors.yellow;
double containerCircleRadius = 0.007;
List<String> addBankFieldList = [
  'Bank Code',
  'Bank Name',
  'Short Name',
  'Address Line 1',
  'Address Line 2',
  'Address Line 3',
  'PO Box No',
  'Country',
  'City',
  'Phone No',
  'Fax No',
  'Email',
  'Contact Person',
  'Contact Person Phone No',
  'Contact Person Email',
  'Website'
];
List<TextEditingController> addBankInputList = [
  for (var i = 0; i < addBankFieldList.length; i++) TextEditingController()
];
List<String> bankMasterButtonList = ['Save & Close', 'Next', 'Close', 'Back'];
String important = '*';
double textFieldWidth = 0.3;
double textFieldHeight = 0.07;
double textFieldBoxWidth = 0.07;
double textFieldBoxHeight = 0.04;
Color importantTextColor = Colors.deepPurple;
Color importantColor = Colors.red;
double textFieldBoxContentHeight = 0.017;
double textFieldBoxContentWidth = 0.007;
Color textFieldBorderColor1 = Colors.blue;
Color textFieldBorderColor2 = Colors.grey;
double textFieldBorderWidth1 = 0.001;
double textFieldBorderWidth2 = 0.003;
Color cursorColor = Colors.black;
double buttonWidth = 0.0125;
double buttonHeight = 0.05;
double buttonPaddingWidth = 0.01;
IconData errorIcon = Icons.error_outline;
Color errorIconColor = Colors.red;
Color transColor = Colors.transparent;
List<String> countryList = ["Brazil", "Italia", "Tunisia", 'Canada'];

// String bankCode = 'Bank Code';
// String bankName = 'Bank Name';
// String shortName = 'Short Name';
// String addressLine1 = 'Address Line 1';
// String addressLine2 = 'Address Line 2';
// String addressLine3 = 'Address Line 3';
// String poBoxNo = 'PO Box No';
// String country = 'Country';
// String city = 'City';
// String phoneNo = 'Phone No';
// String faxNo = 'Fax No';
// String email = 'Email';
// String contactPerson = 'Contact Person';
// String contactPersonPhoneNo = 'Contact Person Phone No';
// String contactPersonEmail = 'Contact Person Email';
// String website = 'Website';
// String saveClose = 'Save & Close';
// String next = 'Next';
// String close = 'Close';
