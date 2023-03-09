import 'package:flutter/material.dart';
import 'package:training_flutter/excel/table/datatable.dart';
import 'constants/constantspage.dart';

class ExcelStartPage extends StatefulWidget {
  const ExcelStartPage({Key? key}) : super(key: key);

  @override
  State<ExcelStartPage> createState() => _ExcelStartPageState();
}

class _ExcelStartPageState extends State<ExcelStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(excelHead),
      ),
      body: const DataTablePage(),
    );
  }
}
