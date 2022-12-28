import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  String name;
  Profile({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 187, 187, 187),
                  child: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  const TextSpan(
                    text: "Logged in as ",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextSpan(
                    text: name,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 7, 94, 255), fontSize: 18),
                  ),
                ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
