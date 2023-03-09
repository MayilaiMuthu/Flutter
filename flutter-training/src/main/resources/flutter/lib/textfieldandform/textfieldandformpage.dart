import 'package:flutter/material.dart';
import 'package:training_flutter/textfieldandform/constants/textConstants.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                width: width * 0.05,
                height: height * 0.05,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.02),
                width: width * 0.9,
                height: height * 0.2,
                child: TextField(
                  controller: _controller1,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      prefixIcon: Icon(Icons.abc),
                      suffixIcon: Icon(Icons.search),
                      label: Text('Name'),
                      border: OutlineInputBorder(),
                      alignLabelWithHint: true,
                      hintText: 'Enter Name........'),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.02),
                width: width * 0.9,
                height: height * 0.2,
                child: TextField(
                  controller: _controller2,
                  obscureText: true,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      prefixIcon: Icon(Icons.abc),
                      suffixIcon: Icon(Icons.password),
                      label: Text('Password'),
                      border: OutlineInputBorder(),
                      alignLabelWithHint: true,
                      hintText: 'Enter Password........'),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.02, vertical: height * 0.02),
                  width: width * 0.9,
                  height: height * 0.1,
                  child: ElevatedButton(
                      onPressed: () {
                        print(_controller1.text);
                        print(_controller2.text);
                        if (_controller1.text.isEmpty &&
                            _controller2.text.isEmpty) {
                          print('Fail');
                        } else {
                          print('Success');
                        }
                      },
                      child: const Text('Test')))
            ],
          ),
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
