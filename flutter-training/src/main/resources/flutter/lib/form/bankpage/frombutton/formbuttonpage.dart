import 'package:flutter/material.dart';

class BankFormButtonPage extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const BankFormButtonPage({Key? key, required this.formKey}) : super(key: key);

  @override
  State<BankFormButtonPage> createState() => _BankFormButtonPageState();
}

class _BankFormButtonPageState extends State<BankFormButtonPage> {
  get formKey => null;

  @override
  Widget build(BuildContext context) {
    var formKeys = formKey;
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          // TODO submit
        }
      },
      child: Text('Submit'),
    );
  }
}
