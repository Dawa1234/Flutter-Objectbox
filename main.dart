import 'package:first_app/Authentication/login.dart';
import 'package:first_app/Authentication/register.dart';
import 'package:first_app/State/objectBax_state.dart';
import 'package:first_app/calculator.dart';
import 'package:first_app/column_screen.dart';
import 'package:first_app/container.dart';
import 'package:first_app/game.dart';
import 'package:first_app/helper/objectBox.dart';
import 'package:first_app/home.dart';
import 'package:first_app/list_tile.dart';
import 'package:first_app/profile.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ObjectBoxState.objectBoxInstance = await ObjectBoxInstance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginScreen(),
        "/registerScreen": (context) => const RegisterScreen(),
        // "/": (context) => const CalenderScrenn(),
        // "/": (context) => const dashbaordScreen(),
        // "/": (context) => const dashbaordScreen(),
        // "/stackImage": (context) => const StackImageScreen(),
        // "/": (context) => DataTableScreen(),
        // "/": (context) =>  GridViewScreen(),
        // "/": (context) => const CardScreen(),
        // "/": (context) => const StudentData(),
        // "/": (context) => const Student_Detials(),
        // "/": (context) => const Addition(),
        // "/": (context) => const FlexScreen(),
        "screen": (context) => const Screen(),
        "/game": (context) => const Game(),
        "/column_screen": (context) => const Clolumn_Screen(),
        "/calculator": (context) => const Calculator(),
        "/listTile": (context) => const List_Tile(),
        "/login": (context) => Login(),
        "/profile": (context) => Profile(
              name: "none",
            ),
        "/result": (context) => Result(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
