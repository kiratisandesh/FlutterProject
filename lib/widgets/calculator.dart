import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String n = "", b = "", s = "", result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Profit or Loss Calculator"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(children: [
            const SizedBox(height: 15),
            // no of shares
            TextField(
              onChanged: (val) {
                n = val;
              },
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  hintText: "Enter the no of shares",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
            const SizedBox(height: 5),
            // For buying price per share
            TextField(
              onChanged: (val) {
                b = val;
              },
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  hintText: "Enter the buying price per share",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
            const SizedBox(height: 5),
            // For selling price per share
            TextField(
              onChanged: (val) {
                s = val;
              },
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  hintText: "Enter the selling price per share",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.blue),
              ),
              height: 25,
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              onPressed: () {
                result = ((double.parse(n) * double.parse(s)) -
                        (double.parse(n) * double.parse(b)))
                    .toString();
              },
            ),
            const SizedBox(height: 10),
            Center(
                child: Text(
              "The result is $result",
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ))
          ]),
        ));
  }
}
