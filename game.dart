import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: const Color.fromARGB(255, 201, 100, 159),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.yellow,
              child: const Center(
                child: Text("Random Number"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
              child: const Center(
                child: Text("Random Number"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              width: double.infinity,
              height: 400,
              color: const Color.fromARGB(255, 218, 218, 218),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Score: "),
                  const Text("Correct: "),
                  const Text("Incorrect: "),
                  const Text("Win/Lose"),
                  const SizedBox(
                    height: 150,
                  ),
                  Center(
                      child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Play Again"),
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
