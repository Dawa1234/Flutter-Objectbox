import 'package:flutter/material.dart';

class Clolumn_Screen extends StatefulWidget {
  const Clolumn_Screen({Key? key}) : super(key: key);

  @override
  State<Clolumn_Screen> createState() => _Clolumn_ScreenState();
}

class _Clolumn_ScreenState extends State<Clolumn_Screen> {
  bool star1 = false;
  bool star2 = false;
  bool star3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 177, 177, 177),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  if (star1 == false) {
                    setState(() {
                      star1 = true;
                    });
                    return;
                  }
                  setState(() {
                    star1 = false;
                  });
                },
                child: const Text("Button1")),
            star1 == true ? const Icon(Icons.star) : const Text(""),
            ElevatedButton(
                onPressed: () {
                  if (star2 == false) {
                    setState(() {
                      star2 = true;
                    });
                    return;
                  }
                  setState(() {
                    star2 = false;
                  });
                },
                child: const Text("Button2")),
            star2 == true ? const Icon(Icons.star) : const Text(""),
            ElevatedButton(
                onPressed: () {
                  if (star3 == false) {
                    setState(() {
                      star3 = true;
                    });
                    return;
                  }
                  setState(() {
                    star3 = false;
                  });
                },
                child: const Text("Button3")),
            star3 == true ? const Icon(Icons.star) : const Text(""),
          ],
        ),
      ),
    );
  }
}
