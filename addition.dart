import 'package:flutter/material.dart';

class Addition extends StatefulWidget {
  const Addition({Key? key}) : super(key: key);

  @override
  State<Addition> createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  TextEditingController first_num = TextEditingController();

  TextEditingController second_num = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  int result = 0;

  SizedBox gap = const SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add two numbers"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              gap,
              TextFormField(
                keyboardType: TextInputType.number,
                controller: first_num,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Fields cannot be empyty!";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.numbers_outlined),
                  border: const OutlineInputBorder(),
                  labelText: "Enter first number",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0)),
                ),
              ),
              gap,
              TextFormField(
                keyboardType: TextInputType.number,
                controller: second_num,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Fields cannot be empyty!";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Enter second number",
                  prefixIcon: const Icon(Icons.numbers_outlined),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1.0)),
                ),
              ),
              gap,
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          result = int.parse(first_num.text) +
                              int.parse(second_num.text);
                        });
                        // Navigator.pushNamed(context, "/result",
                        //     arguments: result);
                      }
                    },
                    child: const Text("Add")),
              ),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                const TextSpan(
                    text: "Sum is: ",
                    style: TextStyle(
                      color: Colors.black,
                    )),
                TextSpan(
                  text: "$result",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                )
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
