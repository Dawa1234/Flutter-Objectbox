import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  Widget showCards(String title, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Center(
        child: GestureDetector(
          onTap: () {
            MotionToast.success(description: Text("$title is clicked"))
                .show(context);
          },
          child: Card(
            color: const Color.fromARGB(255, 187, 27, 16),
            child: Center(
                child: Text(
              title.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 7; i++) ...{
              showCards("Card $i", context),
            }
          ],
        ),
      ),
    );
  }
}
