import 'package:flutter/material.dart';

class DrawerListTiles extends StatefulWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String count;
  const DrawerListTiles(
      {Key? key,
      required this.icon,
      required this.color,
      required this.title,
      required this.count})
      : super(key: key);

  @override
  State<DrawerListTiles> createState() => _DrawerListTilesState();
}

class _DrawerListTilesState extends State<DrawerListTiles> {
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
              color: Colors.grey,
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
                    style: TextStyle(
                        color: widget.color == Colors.grey[200]
                            ? Colors.black
                            : Colors.white,
                        fontSize: width * 0.037),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
