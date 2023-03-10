import 'package:flutter/material.dart';
import 'package:training_flutter/whatsapp/constants/listtileconstants.dart';
import 'package:training_flutter/whatsapp/tabs/calltabpage.dart';
import 'package:training_flutter/whatsapp/tabs/statustabpage.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  int indexTab = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: false,
            titleSpacing: -30.0,
            leading: Container(),
            actions: [
              IconButton(
                icon: const Icon(Icons.camera_alt),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                tooltip: 'Open shopping cart',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
            title: const Text('WhatsApp'),
            bottom: TabBar(
              isScrollable: false,
              indicatorColor: Colors.white,
              onTap: (index) {
                setState(() {
                  indexTab = index;
                });
              },
              tabs: [
                Container(
                  width: 10,
                  alignment: Alignment.centerRight,
                  child: const Tab(
                    icon: Icon(Icons.group, size: 25),
                  ),
                ),
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  child: const Tab(
                    text: "Chats",
                  ),
                ),
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  child: const Tab(
                    text: "Status",
                  ),
                ),
                Container(
                  width: 100,
                  alignment: Alignment.center,
                  child: const Tab(
                    text: "Calls",
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 30,
                          ),
                          const Image(
                              width: 150,
                              height: 150,
                              image: NetworkImage(
                                  "https://1.bp.blogspot.com/-yWVRdjE68No/XxVF_bCAlSI/AAAAAAAAFdg/q_dn2cMgnGks8Cd4c_wZBuHXzdsojfrEwCLcBGAsYHQ/s1600/minions-cartoon-png-transparent-www.quotesdude.com-2.png")),
                        ],
                      ),
                      Container(
                        height: 30,
                      ),
                      const Text("Introducing Communities",
                          style: TextStyle(fontSize: 20)),
                      Container(
                        height: 10,
                      ),
                      const Text("Easily organize your related groups and send",
                          textAlign: TextAlign.center),
                      const Text("announcements. Now, your communities, like",
                          textAlign: TextAlign.center),
                      const Text(
                          "neighborhoods or schools, can have their own space",
                          textAlign: TextAlign.center),
                      Container(
                        height: 30,
                      ),
                      Container(
                        height: 30,
                        width: 250,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                          shape: BoxShape.rectangle,
                        ),
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green),
                              alignment: Alignment.center,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Start your community",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: const [
                  ListConstants(
                    title: "Eagle",
                    imgUrl:
                        "https://townsquare.media/site/920/files/2018/12/Bald-Eagle.jpg",
                    subTitle: "Good Morning",
                    time: "Today",
                  ),
                  ListConstants(
                    title: "Bird",
                    imgUrl:
                        "https://media.istockphoto.com/photos/bald-eagle-picture-id104455584?k=6&m=104455584&s=612x612&w=0&h=a99d_IjHxEilaoVeS55-LpdgMyWRI1AOYDubkYIfTOc=",
                    subTitle: "Good Afternoon",
                    time: "Yesterday",
                  ),
                ],
              ),
              Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: const NetworkImage(
                            "https://townsquare.media/site/920/files/2018/12/Bald-Eagle.jpg"),
                        child: Stack(
                          children: const [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                    radius: 9,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                        radius: 7,
                                        backgroundColor: Colors.green,
                                        child: Icon(
                                          Icons.add,
                                          size: 13,
                                        )) // change this children
                                    ))
                          ],
                        ),
                      ),
                      title: const Text("My status"),
                      subtitle: const Text("Tap to add status update"),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 20.0),
                      child: const Text("Recent updates")),
                  const Divider(
                    height: 1.0,
                  ),
                  const StatusConstant(
                      title: "Eagle",
                      imgUrl:
                          "https://townsquare.media/site/920/files/2018/12/Bald-Eagle.jpg",
                      subTitle: "Today, 8.00 AM"),
                  const StatusConstant(
                      title: "Bird",
                      imgUrl:
                          "https://media.istockphoto.com/photos/bald-eagle-picture-id104455584?k=6&m=104455584&s=612x612&w=0&h=a99d_IjHxEilaoVeS55-LpdgMyWRI1AOYDubkYIfTOc=",
                      subTitle: "Today, 4.00 PM"),
                ],
              ),
              Column(
                children: [
                  const Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.link),
                      ),
                      title: Text("Create call link"),
                      subtitle: Text("Share a link for your WhatsApp call"),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 20.0),
                      child: const Text("Recent")),
                  const Divider(
                    height: 1.0,
                  ),
                  const CallConstants(
                      title: "Eagle",
                      imgUrl:
                          "https://townsquare.media/site/920/files/2018/12/Bald-Eagle.jpg",
                      subTitle: "Today, 10:43 AM"),
                  const CallConstants(
                      title: "Bird",
                      imgUrl:
                          "https://media.istockphoto.com/photos/bald-eagle-picture-id104455584?k=6&m=104455584&s=612x612&w=0&h=a99d_IjHxEilaoVeS55-LpdgMyWRI1AOYDubkYIfTOc=",
                      subTitle: "Yesterday, 1:43 PM")
                ],
              ),
            ],
          ),
          floatingActionButton: indexTab == 1
              ? FloatingActionButton(
                  elevation: 0.0,
                  onPressed: () {},
                  backgroundColor: Colors.transparent,
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.message),
                  ),
                )
              : indexTab == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.edit),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.transparent,
                          elevation: 0.0,
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.camera_alt),
                          ),
                        ),
                      ],
                    )
                  : indexTab == 3
                      ? FloatingActionButton(
                          elevation: 0.0,
                          onPressed: () {},
                          backgroundColor: Colors.transparent,
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.call),
                          ),
                        )
                      : Container(),
        ));
  }
}
