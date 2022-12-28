import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 100,
              left: 50,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 211, 211, 211),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          spreadRadius: 2,
                          blurStyle: BlurStyle.normal)
                    ]),
                width: 300,
                height: 300,
                alignment: Alignment.bottomLeft,
                child: Stack(
                  children: [
                    Positioned(
                        top: -20,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/burger.png"))),
                        )),
                    const Positioned(right: 5, child: Icon(Icons.edit)),
                    Positioned(
                        left: 5,
                        bottom: 5,
                        child: Wrap(
                          children: const [
                            Icon(
                              Icons.thumb_up_sharp,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.comment_sharp),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 100,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(color: Colors.blue, boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      spreadRadius: 2,
                      blurStyle: BlurStyle.normal)
                ]),
                width: 200,
                height: 200,
                alignment: Alignment.bottomRight,
                child: const Text(
                  "Container blue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 140,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/stackImage");
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.bottomRight,
                  decoration:
                      const BoxDecoration(color: Colors.green, boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        spreadRadius: 2,
                        blurStyle: BlurStyle.normal)
                  ]),
                  width: 100,
                  height: 100,
                  child: const Text(
                    "Container Red",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
