import 'package:flutter/material.dart';
import 'package:training_flutter/stack/constants/stackconstants.dart';

class StackDemoPage extends StatefulWidget {
  const StackDemoPage({Key? key}) : super(key: key);

  @override
  State<StackDemoPage> createState() => _StackDemoPageState();
}

class _StackDemoPageState extends State<StackDemoPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * sizedBoxHeight,
            width: width * sizedBoxWidth,
          ),
          Stack(
            //alignment: Alignment.center,
            textDirection: TextDirection.ltr,
            children: [
              Container(
                height: height * firstContainerHeight,
                width: width * firstContainerWidth,
                color: firstBox,
                alignment: Alignment.bottomRight,
                child: const Text(firstText),
              ),
              Container(
                height: height * secondContainerHeight,
                width: width * secondContainerWidth,
                color: secondBox,
                child: const Text(secondText),
              ),
              Positioned(
                left: width * thirdContainerHeight,
                //right: width * 0.2,
                top: height * thirdContainerHeight,
                // bottom: height * 0.2,
                child: Container(
                  height: height * thirdContainerHeight,
                  width: width * thirdContainerHeight,
                  color: thirdBox,
                  alignment: Alignment.bottomRight,
                  child: const Text(thirdText),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
