import 'package:flutter/material.dart';
import 'package:gmail/themeconstants/drawerlisttiles.dart';
import 'package:gmail/themeconstants/toplisttiles.dart';
import 'package:gmail/themeconstants/userslisttiles.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.redAccent,
    ),
    home: const Gmail(),
  ));
}

class Gmail extends StatefulWidget {
  const Gmail({Key? key}) : super(key: key);

  @override
  State<Gmail> createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Primary',
            style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.sYvZzeW9V95lDL4u7QSvWgHaEK?pid=ImgDet&rs=1'),
                      fit: BoxFit.cover)),
              accountName: Text('Eagle'),
              accountEmail: Text('test@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/R.4c037bcd48389f148178e6b251fc89ef?rik=FsCVRQJoX2621A&riu=http%3a%2f%2f3.bp.blogspot.com%2f-qPOdeFYIZnw%2fUpV8XmLXc3I%2fAAAAAAAABBk%2fZEKo86PK54o%2fs1600%2fBald%2b02.jpg&ehk=C8ETtmmxKFI3iq%2fp%2fUTXM62bGP%2bhHyijTbgBzU%2fZRuY%3d&risl=&pid=ImgRaw&r=0'),
                backgroundColor: Colors.amberAccent,
              ),
            ),
            const DrawerListTiles(
                icon: Icons.move_to_inbox_rounded,
                color: Color(0xFFEEEEEE),
                title: 'All Inboxes',
                count: ''),
            Divider(
              height: width * 0.03,
            ),
            const DrawerListTiles(
                icon: Icons.people,
                color: Colors.blue,
                title: 'Social',
                count: '7 New'),
            const DrawerListTiles(
                icon: Icons.inbox,
                color: Color(0xFFEEEEEE),
                title: 'Primary',
                count: '99 +'),
            const DrawerListTiles(
                icon: Icons.more,
                color: Color(0xFFEEEEEE),
                title: 'Promotions',
                count: ''),
            Divider(
              height: width * 0.03,
            ),
            const DrawerListTiles(
                icon: Icons.star,
                color: Color(0xFFEEEEEE),
                title: 'Stared',
                count: '12'),
            const DrawerListTiles(
                icon: Icons.alarm,
                color: Color(0xFFEEEEEE),
                title: 'Snoozed',
                count: ''),
            const DrawerListTiles(
                icon: Icons.play_arrow,
                color: Color(0xFFEEEEEE),
                title: 'Important',
                count: '25'),
            Divider(
              height: width * 0.03,
            ),
            const DrawerListTiles(
                icon: Icons.mail_outline_rounded,
                color: Color(0xFFEEEEEE),
                title: 'Sent',
                count: '7'),
            const DrawerListTiles(
                icon: Icons.outbox_sharp,
                color: Color(0xFFEEEEEE),
                title: 'Outbox',
                count: ''),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopListTiles(
                icon: Icons.people,
                color: Colors.blue,
                title: 'Social',
                subTitle: 'new connection............',
                count: '7 New'),
            TopListTiles(
                icon: Icons.more,
                color: Colors.green,
                title: 'Promotions',
                subTitle: 'google pay............',
                count: '3 New'),
            TopListTiles(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
            UserListTile(
                icon: Icons.info,
                color: Colors.amberAccent,
                title: 'Updates',
                subTitle: 'code test.............',
                count: '5 New'),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
