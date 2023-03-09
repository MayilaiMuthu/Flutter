import 'package:flutter/material.dart';

String excelHead = 'Excel Table View';

List<List<String>> tableRows = [
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
  ['First', 'Second', 'Third', 'First', 'Second', 'Third'],
];

List<String> tableHeads = [
  'Id',
  'Name',
  'Age',
  'Role',
  'Place',
  'Group',
];

List<List<String>> separatePersons = [
  for (var i in persons) [i.id, i.name, i.age, i.role, i.place, i.group]
];

class Person {
  final String id, name, age, role, place, group;
  Person(this.id, this.name, this.age, this.role, this.place, this.group);
}

List<Person> persons = [
  Person('1', 'Raju', '23', 'Java', 'Chennai-28', 'A2'),
  Person('2', 'David', '32', 'C', 'Chennai-04', 'A1'),
  Person('3', 'Gandhi', '35', 'C++', 'Chennai-07', 'A1'),
  Person('4', 'Bala', '16', 'Python', 'Chennai-04', 'A2'),
  Person('5', 'Thirupathi', '73', 'Oracle', 'Chennai-09', 'C2'),
  Person('6', 'Vasu', '43', 'DataBase', 'Chennai-01', 'C1'),
  Person('7', 'Mani', '44', 'MySQL', 'Chennai-06', 'B1'),
  Person('8', 'Vicky', '21', 'Jasper', 'Chennai-65', 'A2'),
  Person('9', 'Muthu', '25', 'Flutter', 'Chennai-90', 'B3'),
  Person('10', 'Eagle', '20', 'Html', 'Chennai-71', 'A3'),
  Person('11', 'Rose', '27', 'CSS', 'Chennai-84', 'A2'),
  Person('12', 'Hari', '54', 'JS', 'Chennai-63', 'B2'),
  Person('13', 'Akash', '69', 'Spring', 'Chennai-23', 'C2'),
  Person('14', 'Durai', '26', 'API', 'Chennai-91', 'A2'),
  Person('15', 'John', '21', 'REST-API', 'Chennai-76', 'A2'),
  Person('16', 'Irul', '30', 'Hibernate', 'Chennai-17', 'A2'),
];

int compareString(bool ascending, String val1, String val2) {
  int? a = int.tryParse(val1);
  int? b = int.tryParse(val2);
  if (a != null && b != null) {
    return ascending ? a.compareTo(b) : b.compareTo(a);
  } else {
    return ascending ? val1.compareTo(val2) : val2.compareTo(val1);
  }
}

List<String> test = persons.map((i) => (i.id)).toList();

IconData filterIcon = Icons.filter_alt_outlined;

IconData searchIcon = Icons.search;

List<String> items = [
  'Up',
  'Down',
  'Clear',
];
