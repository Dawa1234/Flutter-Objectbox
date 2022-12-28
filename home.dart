import 'package:first_app/profile.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  int number = 0;

  TextEditingController username = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text("Login Page"),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          color: const Color.fromARGB(255, 238, 237, 237),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(width: 0)),
                ),
                controller: username,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(Icons.password, color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(width: 0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(width: 0)),
                ),
                controller: password,
                obscureText: true,
              ),
              // Login------------------------
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    // log("Username: ${username.text} ");
                    // log("Password: ${password.text}");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (conetxt) => Profile(
                            name:
                                username.text == "" ? "null" : username.text)));
                  },
                  child: const Text("Login")),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Forget your password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
