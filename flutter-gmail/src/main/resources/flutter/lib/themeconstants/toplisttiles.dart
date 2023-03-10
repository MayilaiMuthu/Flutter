import 'package:flutter/material.dart';

class TopListTiles extends StatefulWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String subTitle;
  final String count;
  const TopListTiles(
      {Key? key,
      required this.icon,
      required this.color,
      required this.title,
      required this.subTitle,
      required this.count})
      : super(key: key);

  @override
  State<TopListTiles> createState() => _TopListTilesState();
}

class _TopListTilesState extends State<TopListTiles> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(
              widget.icon,
              color: widget.color,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.009, vertical: height * 0.0005),
                  color: widget.color,
                  child: Text(
                    widget.count,
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.037),
                  )),
            ],
          ),
          subtitle: Text(widget.subTitle),
        ),
        Divider(
          height: width * 0.003,
        )
      ],
    );
  }
}
