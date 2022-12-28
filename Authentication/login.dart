import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final SizedBox _gap10 = const SizedBox(
    height: 10,
  );
  final SizedBox _gap30 = const SizedBox(
    height: 30,
  );

  TextStyle style = const TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/burger.png"))),
                ),
                _gap10,
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Username"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.orange)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.orange)),
                  ),
                ),
                _gap10,
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Password"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.orange)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.orange)),
                  ),
                ),
                _gap10,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Login", style: style),
                  ),
                ),
                _gap10,
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/registerScreen");
                    },
                    child: Text(
                      "Register",
                      style: style,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
