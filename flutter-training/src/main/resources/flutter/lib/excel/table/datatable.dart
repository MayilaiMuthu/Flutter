import 'package:flutter/material.dart';
import 'package:training_flutter/excel/constants/constantspage.dart';

class DataTablePage extends StatefulWidget {
  const DataTablePage({Key? key}) : super(key: key);

  @override
  State<DataTablePage> createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  int sortColumnIndex = 0;
  int startIndex = 0;
  bool sortAscending = true;
  bool checkboxValue = true;
  int numFormatValue = 0;
  List<List<String>> tablePersons = [];

  @override
  Widget build(BuildContext context) {
    if (tablePersons.isEmpty && startIndex == 0) {
      tablePersons.addAll(separatePersons);
      startIndex = 1;
    }
    TextEditingController controller = TextEditingController();
    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
            sortAscending: sortAscending,
            sortColumnIndex: sortColumnIndex,
            border: TableBorder.all(color: Colors.lightGreen),
            columns: [
              for (var i in tableHeads)
                DataColumn(
                  label: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            int index =
                                tableHeads.indexWhere((item) => item == i);
                            sortColumnIndex = index;
                            numFormatValue = 0;
                          },
                          child: Text(i.toString())),
                      SingleChildScrollView(
                        child: PopupMenuButton<String>(
                          icon: Icon(filterIcon),
                          onSelected: (String result) {
                            switch (result) {
                              case 'Up':
                                setState(() {
                                  tablePersons.sort((p1, p2) => compareString(
                                      true,
                                      p1.elementAt(tableHeads.indexOf(i)),
                                      p2.elementAt(tableHeads.indexOf(i))));
                                  sortAscending = true;
                                  sortColumnIndex = tableHeads.indexOf(i);
                                });
                                break;
                              case 'Down':
                                setState(() {
                                  tablePersons.sort((p1, p2) => compareString(
                                      false,
                                      p1.elementAt(tableHeads.indexOf(i)),
                                      p2.elementAt(tableHeads.indexOf(i))));
                                  sortAscending = false;
                                  sortColumnIndex = tableHeads.indexOf(i);
                                });
                                break;
                              case 'Clear':
                                setState(() {
                                  sortAscending = true;
                                  sortColumnIndex = 0;
                                  numFormatValue = 0;
                                  tablePersons.removeRange(
                                      0, tablePersons.length);
                                  startIndex = 0;
                                  // tablePersons.sort((p1, p2) => compareString(
                                  //     true,
                                  //     p1.elementAt(sortColumnIndex),
                                  //     p2.elementAt(sortColumnIndex)));
                                });
                                break;
                              case 'Number Format':
                                setState(() {
                                  if (numFormatValue == 1) {
                                    numFormatValue = 0;
                                  } else {
                                    numFormatValue = 1;
                                  }
                                });
                                break;
                              case 'Search':
                                setState(() {
                                  _runFilter(
                                      controller.text, tableHeads.indexOf(i));
                                  // List<List<String>> results = [];
                                  //
                                  // results = separatePersons
                                  //     .where((person) =>
                                  //         person[tableHeads.indexOf(i)]
                                  //             .toLowerCase()
                                  //             .contains(controller.text
                                  //                 .toLowerCase()))
                                  //     .toList();
                                  // tablePersons = results;

                                  print(controller.text);
                                  print('Search');
                                });
                                break;
                              case 'Select All':
                                setState(() {
                                  if (checkboxValue == true) {
                                    checkboxValue = false;
                                    tablePersons.removeRange(
                                        0, tablePersons.length);
                                  } else {
                                    checkboxValue = true;
                                    if (tablePersons.isEmpty) {
                                      tablePersons.addAll(separatePersons);
                                    }
                                  }
                                });
                                break;
                              default:
                            }
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<String>>[
                            for (var k in items)
                              PopupMenuItem<String>(
                                value: k,
                                child: Text(k),
                              ),
                            PopupMenuItem<String>(
                              value: 'Number Format',
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Number Format'),
                                      Icon(Icons.arrow_forward_ios_sharp),
                                    ],
                                  )),
                            ),
                            if (numFormatValue == 0)
                              PopupMenuItem<String>(
                                onTap: () {},
                                value: 'search',
                                child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: TextField(
                                      controller: controller,
                                      onChanged: (value) {
                                        setState(() {
                                          _runFilter(controller.text,
                                              tableHeads.indexOf(i));
                                          print(controller.text);
                                          print('Search');
                                        });
                                      },
                                      decoration: InputDecoration(
                                          labelText: 'Search',
                                          suffixIcon: Icon(searchIcon)),
                                    )),
                              ),
                            if (numFormatValue == 0)
                              const PopupMenuItem<String>(
                                value: 'Select All',
                                child: Text('Select All'),
                              ),
                            if (numFormatValue == 0)
                              if (tablePersons.isEmpty)
                                const PopupMenuItem<String>(
                                  child: Text('No Data Found'),
                                ),
                            if (numFormatValue == 0)
                              for (var j in tablePersons)
                                PopupMenuItem<String>(
                                  value: j[sortColumnIndex],
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            print(value);
                                            //checkboxValue = value!;
                                          });
                                        },
                                      ),
                                      Text(
                                        j[sortColumnIndex],
                                      ),
                                    ],
                                  ),
                                ),
                            if (numFormatValue == 1)
                              const PopupMenuItem(
                                  child: Text('Show Rows Where')),
                            if (numFormatValue == 1)
                              PopupMenuItem(
                                child: SingleChildScrollView(
                                    child: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(child: Text('data')),
                                    //DropdownMenuItem(child: Text('data')),
                                    // DropdownMenuItem(child: Text('data'))
                                  ],
                                  onChanged: (value) {},
                                )),
                              ),
                            if (numFormatValue == 1)
                              const PopupMenuItem(
                                  child: Text('Show Rows Where')),
                            if (numFormatValue == 1)
                              const PopupMenuItem(
                                  child: Text('Show Rows Where')),
                            if (numFormatValue == 1)
                              const PopupMenuItem(
                                  child: Text('Show Rows Where')),
                            if (numFormatValue == 1)
                              const PopupMenuItem(
                                  child: Text('Show Rows Where')),
                            if (numFormatValue == 1)
                              const PopupMenuItem(
                                  child: Text('Show Rows Where'))
                          ],
                        ),
                      ),
                    ],
                  ),
                  onSort: (columnIndex, ascending) => {
                    setState(() {
                      tablePersons.sort((p1, p2) => compareString(
                          ascending,
                          p1.elementAt(columnIndex),
                          p2.elementAt(columnIndex)));
                      sortAscending = ascending;
                      sortColumnIndex = columnIndex;
                    })
                  },
                ),
            ],
            rows: [
              for (var j in tablePersons)
                DataRow(cells: [for (var k in j) DataCell(Text(k))])
            ]),
      ),
    );
  }
  //List<List<String>> _foundUsers = [];
  // @override
  // initState() {
  //   // at the beginning, all users are shown
  //   _foundUsers = tablePersons;
  //   super.initState();
  // }

  void _runFilter(String enteredKeyword, int index) {
    List<List<String>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = separatePersons;
    } else {
      results = separatePersons
          .where((person) => person[index]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    //Refresh the UI
    setState(() {
      tablePersons = results;
    });
  }
}
