import 'package:flutter/material.dart';

class StatusConstant extends StatefulWidget {
  final String title;
  final String imgUrl;
  final String subTitle;
  const StatusConstant({
    Key? key,
    required this.title,
    required this.imgUrl,
    required this.subTitle,
  }) : super(key: key);

  @override
  State<StatusConstant> createState() => _StatusConstantState();
}

class _StatusConstantState extends State<StatusConstant> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(widget.imgUrl),
        ),
        title: Text(widget.title),
        subtitle: Text(widget.subTitle),
      ),
    );
  }
}
