import 'package:flutter/material.dart';
import 'package:training_flutter/listview/constants/listviewconstants.dart';

class ListViewBuilderDemo extends StatefulWidget {
  const ListViewBuilderDemo({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
}

class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: persons.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(persons[index].name),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
