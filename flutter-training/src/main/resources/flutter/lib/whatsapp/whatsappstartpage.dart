import 'package:flutter/material.dart';
import 'package:training_flutter/whatsapp/demo/whatsappdemopage.dart';

class WhatsAppStartPage extends StatefulWidget {
  const WhatsAppStartPage({Key? key}) : super(key: key);

  @override
  State<WhatsAppStartPage> createState() => _WhatsAppStartPageState();
}

class _WhatsAppStartPageState extends State<WhatsAppStartPage> {
  @override
  Widget build(BuildContext context) {
    return const WhatsApp();
  }
}
