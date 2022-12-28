import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({Key? key}) : super(key: key);

  int? value;

  @override
  Widget build(BuildContext context) {
    value = ModalRoute.of(context)!.settings.arguments as int?;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "The sum is $value",
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
