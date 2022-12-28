import 'package:first_app/Calculator/buttons.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  TextEditingController number = TextEditingController(text: "0");

  String firstValue = "0";
  String secondValue = "0";
  String operation = "";
  bool isOperation = false;
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              // TextFormField
              child: TextFormField(
                enabled: false,
                controller: number,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  // crossAxisCount: 3,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          firstValue = "0";
                          secondValue = "0";
                          isOperation = false;
                          operation = "";
                          number.text = '0';
                        });
                      },
                      child: Text(
                        "C",
                        style: style,
                      ),
                      // child: clear("C"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        operation = "*";
                        isOperation = true;
                      },
                      child: Text(
                        "*",
                        style: style,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        operation = "/";
                        isOperation = true;
                      },
                      child: Text("/", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            return;
                          }
                          if (secondValue.length > 1) {
                            secondValue = secondValue.substring(
                                0, secondValue.length - 1);
                            setState(() {
                              number.text = secondValue;
                            });

                            return;
                          }
                          if (secondValue.length == 1 && secondValue != "0") {
                            secondValue = "0";

                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                        } else {
                          if (firstValue == "0") {
                            return;
                          }
                          if (firstValue.length > 1) {
                            firstValue =
                                firstValue.substring(0, firstValue.length - 1);
                            setState(() {
                              number.text = firstValue;
                            });

                            return;
                          }
                          if (firstValue.length == 1 && firstValue != "0") {
                            firstValue = "0";

                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                        }
                      },
                      child: const Icon(Icons.backspace),
                    ),

                    // One
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "1";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}1";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "1";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}1";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("1", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "2";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}2";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "2";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}2";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("2", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Second Value
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "3";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}3";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "3";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}3";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("3", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (operation == "") {
                          operation = "+";
                          isOperation = true;
                        }
                      },
                      child: Text("+", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "4";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}4";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "4";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}4";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("4", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "5";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}5";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "5";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}5";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("5", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "6";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}6";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "6";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}6";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("6", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        operation = "-";
                        isOperation = true;
                      },
                      child: Text("-", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "7";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}7";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "7";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}7";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("7", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "8";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}8";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "8";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}8";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("8", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            secondValue = "9";
                            setState(() {
                              number.text = secondValue;
                            });
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}9";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            firstValue = "9";
                            setState(() {
                              number.text = firstValue;
                            });
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}9";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("9", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${double.parse(secondValue) / 100}";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${double.parse(firstValue) / 100}";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("%", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (number.text == "0") {
                          return;
                        }
                        if (number.text != "0") {
                          setState(() {
                            number.text = "${number.text}0";
                          });
                        }
                      },
                      child: Text("0", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue == "0") {
                            return;
                          }
                          if (secondValue != "0") {
                            secondValue = "${secondValue}00";
                            setState(() {
                              number.text = secondValue;
                            });
                          }
                        } else {
                          if (firstValue == "0") {
                            return;
                          }
                          if (firstValue != "0") {
                            firstValue = "${firstValue}00";
                            setState(() {
                              number.text = firstValue;
                            });
                          }
                        }
                      },
                      child: Text("00", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (isOperation) {
                          if (secondValue.contains(".")) {
                            return;
                          }
                          secondValue = "$secondValue.";
                          setState(() {
                            number.text = secondValue;
                          });
                        } else {
                          if (firstValue.contains(".")) {
                            return;
                          }
                          firstValue = "$firstValue.";
                          setState(() {
                            number.text = firstValue;
                          });
                        }
                      },
                      child: Text(".", style: style),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        switch (operation) {
                          case "+":
                            double result = double.parse(firstValue) +
                                double.parse(secondValue);
                            setState(() {
                              number.text = result.toString();
                            });
                            break;
                          case "-":
                            double result = double.parse(firstValue) -
                                double.parse(secondValue);

                            setState(() {
                              number.text = result.toString();
                            });
                            break;
                          case "*":
                            double result = double.parse(firstValue) *
                                double.parse(secondValue);

                            setState(() {
                              number.text = result.toString();
                            });
                            break;
                          case "/":
                            double result = double.parse(firstValue) /
                                double.parse(secondValue);
                            setState(() {
                              number.text = result.toString();
                            });
                            break;

                          default:
                        }
                      },
                      child: Text(
                        "=",
                        style: style,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
