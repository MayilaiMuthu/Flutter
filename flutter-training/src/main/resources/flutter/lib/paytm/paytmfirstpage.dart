import 'package:flutter/material.dart';

class PayTm extends StatefulWidget {
  const PayTm({super.key});
  @override
  State<PayTm> createState() => _PayTmState();
}

class _PayTmState extends State<PayTm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          centerTitle: true,
          leading: Container(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.deepOrange,
              child: Stack(
                children: const [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "KS",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.menu,
                                size: 13,
                              )) // change this children
                          ))
                ],
              ),
            ),
          ),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Pay",
                    style: TextStyle(color: Colors.indigo),
                  ),
                  Text("tm", style: TextStyle(color: Colors.blue))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "-",
                    style: TextStyle(color: Colors.blue, fontSize: 14.0),
                  ),
                  Text(
                    "UPI",
                    style: TextStyle(color: Colors.black, fontSize: 12.0),
                  ),
                  Text(
                    "-",
                    style: TextStyle(color: Colors.blue, fontSize: 14.0),
                  )
                ],
              ),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search_sharp)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.message_sharp)),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white10),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(30.0))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "UPI Money Transfer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "123456789@paytm",
                          style: TextStyle(
                            backgroundColor: Colors.grey[200],
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 23.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(Icons.qr_code)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(Icons.contacts)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(Icons.payment)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(Icons.account_balance)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: const [
                          Text(
                            "Scan & Pay",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "To Mobile or \n Contact",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "To UPI Apps",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "To Bank or \n Self A/C",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: Container(
                        height: 30,
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
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white10),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(30.0))),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          top: 18.0, left: 0.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Container(
                            width: 70,
                            decoration: const BoxDecoration(
                                color: Colors.yellowAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            child: const Text(
                              "Passbook",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellowAccent,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: const Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                          Container(
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.yellowAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            child: const Text(
                              "Activate",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: const Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 0.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.menu_book)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.paypal)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.account_balance_wallet_sharp)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.personal_injury)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: const [
                          Text(
                            "Balance & \n History",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "Paytm \n Postpaid",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "Paytm Wallet",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "Personal \n Loan",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 15.0, left: 180.0, right: 180.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.blue[300],
                            size: 10.0,
                          ),
                          const Icon(
                            Icons.circle,
                            color: Colors.black12,
                            size: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 185,
                    padding: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white10),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 7.0, bottom: 7.0),
                                child: CircleAvatar(
                                    backgroundColor: Colors.green[100],
                                    child: const Icon(Icons.wallet_giftcard))),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 7.0, bottom: 7.0, left: 15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Refer & Earn",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Flat 151"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 185,
                    padding: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white10),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(
                                    top: 7.0, bottom: 7.0),
                                child: CircleAvatar(
                                    backgroundColor: Colors.green[100],
                                    child: const Icon(Icons.wallet_giftcard))),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 7.0, bottom: 7.0, left: 15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Send Money",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Get 5"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 20.0,
              ),
              Container(
                padding:
                    const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                height: 265,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white10),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(30.0))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "UPI Money Transfer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "123456789@paytm",
                          style: TextStyle(
                            backgroundColor: Colors.grey[200],
                            fontSize: 12.0,
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 0.0, right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Container(
                            color: Colors.white,
                            child: const Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                          Container(
                            width: 90,
                            decoration: const BoxDecoration(
                                color: Colors.yellowAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            child: const Text(
                              "Flat 1.5% CB",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.yellowAccent,
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: const Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            child: const Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 0.0, left: 1.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.mobile_friendly)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.home)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.settings_input_antenna_sharp)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.lightbulb)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 2.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: const [
                          Text(
                            "Mobile \n Recharge",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "Rent Via \n Credit Card",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "DTH \n Recharge",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "Electricity Bill",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.credit_card)),
                          const CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.home_work_outlined)),
                          const CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.paste_rounded)),
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue[100],
                              child: const Icon(Icons.east_outlined)),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 2.0, left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: const [
                          Text(
                            "Credit card \n Payments",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "Apartments",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "Education",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            "View More",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                      ),
                      child: Container(
                        height: 30,
                        color: Colors.blue[100],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blue[200],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.indigo,
          onPressed: () {},
          label: const Text("Scan Any QR"),
          icon: const Icon(Icons.qr_code),
        ),
      ),
    );
  }
}
