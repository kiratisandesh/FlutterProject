import 'package:flutter/material.dart';
import 'widgets/drawers.dart';

class Terminology extends StatefulWidget {
  const Terminology({super.key});

  @override
  State<Terminology> createState() => _TerminologyState();
}

class _TerminologyState extends State<Terminology> {
  final List<String> entries = [
    'Stock Market',
    'Bull VS Bear',
    'Types of Stocks',
    'Dividend'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScoreApp',
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Terminology"),
          ),
          drawer: const Drawers(),
          body:
              // entries.length > 0 ?
              ListView.separated(
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(entries[index]),
                onLongPress: (() {
                  setState(() {
                    entries.removeAt(index);
                  });
                }),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(color: Colors.grey);
            },
          )),
    );
  }
}

