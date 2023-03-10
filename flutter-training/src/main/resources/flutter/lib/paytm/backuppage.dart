import 'package:flutter/material.dart';

class PayTmTest extends StatefulWidget {
  const PayTmTest({Key? key}) : super(key: key);

  @override
  State<PayTmTest> createState() => _PayTmTestState();
}

class _PayTmTestState extends State<PayTmTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        leading: Container(
          padding: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            child: Text(
              "KS",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: const Text(
          "Paytm",
          style: TextStyle(color: Color.fromARGB(201, 42, 45, 224)),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(children: [
        const Padding(padding: EdgeInsets.all(10)),
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
                width: 0.5,
              ), //Border.all
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(
                    5.0,
                    5.0,
                  ), //Offset
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            //color: Colors.white70,
            height: 150.0,
            width: double.infinity,
            child: Column(
              children: [
                const Divider(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("UPI Money Transfer"),
                    Text("123456789@paytm")
                  ],
                ),
                const Divider(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.scanner),
                        Text("Scan & Pay"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.contacts),
                        Text("To Mobile or"),
                        Text("Contact"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.payment),
                        Text("To UPI Apps"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.account_balance),
                        Text("To Bank or"),
                        Text("Self A/C"),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 10.0,
                ),
                Container(
                  color: Colors.blue[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("Make UPI Payment & Get Cashback"),
                          Icon(Icons.handshake),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ],
            )),
        const Divider(
          height: 10.0,
        ),
        Container(
          height: 100.0,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.transparent,
              width: 0.5,
            ), //Border.all
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                offset: Offset(
                  5.0,
                  5.0,
                ), //Offset
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.menu_book),
                      Text("Balance &"),
                      Text("History"),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.paypal),
                      Text("Paytm"),
                      Text("Postpaid"),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.wallet),
                      Text("Paytm Wallet"),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.personal_injury),
                      Text("Personal"),
                      Text("Loan"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          height: 10.0,
        ),
        Container(
          height: 100.0,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.transparent,
              width: 0.5,
            ), //Border.all
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                offset: Offset(
                  5.0,
                  5.0,
                ), //Offset
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.wallet_giftcard),
                    ],
                  ),
                  Column(
                    children: const [
                      Text("Refer & Earn"),
                      Text("Flat 151"),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.paypal),
                    ],
                  ),
                  Column(
                    children: const [
                      Text("Send Money"),
                      Text("Get 5"),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        const Divider(
          height: 10.0,
        ),
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
                width: 0.5,
              ), //Border.all
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(
                    5.0,
                    5.0,
                  ), //Offset
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            //color: Colors.white70,
            height: 250.0,
            width: double.infinity,
            child: Column(
              children: [
                const Divider(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("Recharge & Bill Payments"),
                    Text("My Bills")
                  ],
                ),
                const Divider(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.mobile_friendly),
                        Text("Mobile"),
                        Text("Recharge"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.home),
                        Text("Rent Via"),
                        Text("Credit Card"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.settings_input_antenna_sharp),
                        Text("DTH"),
                        Text("Recharge"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.lightbulb),
                        Text("Electricity Bill"),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.credit_card),
                        Text("Credit card"),
                        Text("Payments"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.home_work_outlined),
                        Text("Apartments"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.paste_rounded),
                        Text("Education"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.east_outlined),
                        Text("View More"),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 10.0,
                ),
                Container(
                  color: Colors.blue[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text("1000-2000 Cashback Offers"),
                          Icon(Icons.mobile_screen_share),
                        ],
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ],
            )),
        const Divider(
          height: 10.0,
        ),
      ]),
      backgroundColor: Colors.white70,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.indigo,
        onPressed: () {},
        label: const Text("Scan Any QR"),
        icon: const Icon(Icons.scanner),
      ),
    );
  }
}
