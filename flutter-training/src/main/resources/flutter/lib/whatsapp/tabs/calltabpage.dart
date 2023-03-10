import 'package:flutter/material.dart';

class CallConstants extends StatefulWidget {
  final String title;
  final String imgUrl;
  final String subTitle;
  const CallConstants(
      {Key? key,
      required this.title,
      required this.imgUrl,
      required this.subTitle})
      : super(key: key);

  @override
  State<CallConstants> createState() => _CallConstantsState();
}

class _CallConstantsState extends State<CallConstants> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(widget.imgUrl),
        ),
        title: Text(widget.title),
        subtitle: Text(widget.subTitle),
        trailing: const Icon(Icons.call),
      ),
    );
  }
}
