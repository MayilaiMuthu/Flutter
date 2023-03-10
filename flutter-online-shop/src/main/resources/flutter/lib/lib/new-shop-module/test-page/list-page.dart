import 'package:flutter/material.dart';

class FlutterExample extends StatelessWidget {
  const FlutterExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body: ListView(
        children: List.generate(
            5,
            (i) => ListTileItem(
                  title: "Item$i",
                )),
      ),
    );
  }
}

// class ListTileItem extends StatefulWidget {
//   String title;
//   ListTileItem({required this.title});
//   @override
//   _ListTileItemState createState() => new _ListTileItemState();
// }

class ListTileItem extends StatefulWidget {
  final String title;
  const ListTileItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<ListTileItem> createState() => _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(widget.title),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () => setState(() => _itemCount--),
              ),
              Text(_itemCount.toString()),
              IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => setState(() => _itemCount++)),
            ],
          )
        ],
      ),
      // trailing: Row(
      //   children: [
      //     IconButton(
      //       icon: const Icon(Icons.remove),
      //       onPressed: () => setState(() => _itemCount--),
      //     ),
      //     Text(_itemCount.toString()),
      //     IconButton(
      //         icon: const Icon(Icons.add),
      //         onPressed: () => setState(() => _itemCount++)),
      //   ],
      // ),
    );
  }
}
// Container(
// padding: EdgeInsets.all(3),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(5),
// ),
// child: Row(
// children: [
// InkWell(
// onTap: () {},
// child: const Icon(
// Icons.remove,
// color: Colors.white,
// size: 16,
// )),
// Container(
// margin: const EdgeInsets.symmetric(horizontal: 3),
// padding:
// const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(3),
// color: Colors.white),
// child: const Text(
// '3',
// style: TextStyle(color: Colors.black, fontSize: 16),
// ),
// ),
// InkWell(
// onTap: () {},
// child: const Icon(
// Icons.add,
// color: Colors.white,
// size: 16,
// )),
// ],
// ),
// ),
