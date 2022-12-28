import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/dark.jpg"),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/dark.jpg"),
                      fit: BoxFit.fill),

                  // shape: BoxShape.circle,
                  color: Color.fromARGB(255, 255, 141, 133),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/dark.jpg"),
                      fit: BoxFit.fill),

                  // shape: BoxShape.circle,
                  color: Color.fromARGB(255, 255, 141, 133),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(),
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928__480.jpg")),
            ],
          ),
        ),
      ),
    );
  }
}
