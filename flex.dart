import 'package:flutter/material.dart';

class FlexScreen extends StatelessWidget {
  const FlexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
            flex: 3,
            child: Container(
              color: const Color.fromARGB(255, 192, 13, 0),
              child: const Center(
                child: Text("Text1"),
              ),
            ),
          ),
          Flexible(
            // fit: FlexFit.tight,
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 0, 119, 216),
              child: const Center(
                child: Text("Text2"),
              ),
            ),
          ),
          Flexible(
            // fit: FlexFit.tight,
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 226, 204, 0),
              child: const Center(
                child: Text("Text2"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
