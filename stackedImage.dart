import 'package:flutter/material.dart';

class StackImageScreen extends StatelessWidget {
  const StackImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
                top: 150,
                left: 70,
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 228, 228),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          spreadRadius: 0.5,
                        )
                      ]),
                )),
            Positioned(
                top: 80,
                left: 100,
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/burger.png"),
                          fit: BoxFit.fill)),
                )),
          ],
        ),
      ),
    );
  }
}
