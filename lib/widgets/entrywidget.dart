import 'package:flutter/material.dart';

import 'favourites.dart';

class entrywidget extends StatefulWidget {
  const entrywidget({super.key});

  @override
  State<entrywidget> createState() => _entrywidgetState();
}

class _entrywidgetState extends State<entrywidget> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _stname = TextEditingController();

  late final List<String> entries;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Information Entry")),
      body: Column(
        children: [
          TextField(
            controller: _name,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                fillColor: const Color.fromRGBO(158, 158, 158, 1),
                hintText: "Industry",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _stname,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                fillColor: const Color.fromRGBO(158, 158, 158, 1),
                hintText: "Stock",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Favourites(),
                    ));
              },
              child: const Text(
                "Enter",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
