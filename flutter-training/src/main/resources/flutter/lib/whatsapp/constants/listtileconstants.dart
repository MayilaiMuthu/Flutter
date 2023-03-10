import 'package:flutter/material.dart';

class ListConstants extends StatefulWidget {
  final String title;
  final String imgUrl;
  final String subTitle;
  final String time;
  const ListConstants(
      {Key? key,
      required this.title,
      required this.imgUrl,
      required this.subTitle,
      required this.time})
      : super(key: key);

  @override
  State<ListConstants> createState() => _ListConstantsState();
}

class _ListConstantsState extends State<ListConstants> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(widget.imgUrl),
        ),
        title: Text(widget.title),
        subtitle: Text(widget.subTitle),
        trailing: Text(widget.time),
      ),
    );
  }
}
