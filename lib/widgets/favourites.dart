import 'package:flutter/material.dart';
import 'package:stock_training_app/widgets/entrywidget.dart';
import 'drawers.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  final List<String> entries = [];

  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Favourites',
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Favourites"),
            // TextField(
            //   controller: textController,
            // ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const entrywidget(),
                  ));
              // setState(() {
              //   entries.add(textController.text);
              //   textController.clear();
              // });
            },
            child: const Icon(Icons.add),
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
              return Divider(color: Colors.grey);
            },
          )
          // : Center(
          //     child: Text('No Favourites in your list'),
          //   ),
          ),
    );
  }
}
