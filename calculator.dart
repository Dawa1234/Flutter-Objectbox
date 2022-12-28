import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextStyle styling = const TextStyle(
      fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold);
  double a = 0;
  double b = 0;
  double result = 0;
  String value = "0";
  String value1 = "0";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.pink,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.75,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2,
                        ),
                        // Row 1
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Flexible(
                                  flex: 3,
                                  child: InkWell(
                                    onTap: () {
                                      value1 = "0";
                                      setState(() {
                                        value = "0";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "AC",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0" || value.contains("/")) {
                                        return;
                                      }
                                      a = double.parse(value);
                                      value1 = "0";
                                      setState(() {
                                        value = "$value/";
                                      });
                                    },
                                    child: Container(
                                      color: Colors.orange,
                                      child: Center(
                                          child: Text(
                                        "/",
                                        style: styling,
                                      )),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        // Row2
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        setState(() {
                                          value = "7";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}7";
                                      setState(() {
                                        value = "${value}7";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "7",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        setState(() {
                                          value = "8";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}8";
                                      print(value1);
                                      setState(() {
                                        value = "${value}8";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "8",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        value1 = "9";
                                        setState(() {
                                          value = "9";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}9";
                                      setState(() {
                                        value = "${value}9";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "9",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0" || value.contains("x")) {
                                        return;
                                      }
                                      value1 = "${value1}x";
                                      setState(() {
                                        value = "${value}x";
                                      });
                                    },
                                    child: Container(
                                      color: Colors.orange,
                                      child: Center(
                                        child: Text(
                                          "x",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        // Row3
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        value1 = "4";
                                        setState(() {
                                          value = "4";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}4";
                                      setState(() {
                                        value = "${value}4";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "4",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        value1 = "5";
                                        setState(() {
                                          value = "5";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}5";
                                      setState(() {
                                        value = "${value}5";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "5",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        value1 = "6";
                                        setState(() {
                                          value = "6";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}6";
                                      setState(() {
                                        value = "${value}6";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "6",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0" || value.contains("-")) {
                                        return;
                                      }
                                      value1 = "1$value-";
                                      setState(() {
                                        value = "$value-";
                                      });
                                    },
                                    child: Container(
                                      color: Colors.orange,
                                      child: Center(
                                        child: Text(
                                          "-",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        // Row4
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        value1 = "1";
                                        setState(() {
                                          value = "1";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}1";
                                      setState(() {
                                        value = "${value}1";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        value1 = "2";
                                        setState(() {
                                          value = "2";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}2";
                                      setState(() {
                                        value = "${value}2";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "2",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        value1 = "3";
                                        setState(() {
                                          value = "3";
                                        });
                                        return;
                                      }
                                      value1 = "${value1}3";
                                      setState(() {
                                        value = "${value}3";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "3",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0" || value.contains("+")) {
                                        return;
                                      }
                                      value1 = "1$value+";
                                      setState(() {
                                        value = "$value+";
                                      });
                                    },
                                    child: Container(
                                      color: Colors.orange,
                                      child: Center(
                                        child: Text(
                                          "+",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 100,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Flexible(
                                  flex: 3,
                                  child: InkWell(
                                    onTap: () {
                                      if (value == "0") {
                                        return;
                                      }
                                      value1 = "${value1}0";
                                      setState(() {
                                        value = "${value}0";
                                      });
                                    },
                                    child: Container(
                                      color: const Color.fromARGB(
                                          255, 107, 107, 107),
                                      child: Center(
                                        child: Text(
                                          "0",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(
                                width: 2,
                              ),
                              Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      if (value.contains("/")) {
                                        b = double.parse(value1);
                                        result = (a / b);
                                        setState(() {
                                          value = result.toString();
                                        });
                                      }
                                    },
                                    child: Container(
                                      color: Colors.orange,
                                      child: Center(
                                        child: Text(
                                          "=",
                                          style: styling,
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              Positioned(
                // right: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: const Color.fromARGB(255, 51, 51, 51),
                  child: TextField(
                    // expands: true,
                    textAlign: TextAlign.end,
                    enabled: false,
                    decoration: InputDecoration(
                        hintText: value,
                        hintStyle:
                            const TextStyle(color: Colors.white, fontSize: 40),
                        isDense: true,
                        contentPadding: const EdgeInsets.only(top: 130),
                        filled: true,
                        enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 0, color: Colors.white))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
