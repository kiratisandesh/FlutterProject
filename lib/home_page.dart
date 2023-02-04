import 'package:flutter/material.dart';
import 'models/stock.dart';
import 'widgets/drawers.dart';
import 'widgets/stocklist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Stock Training App',
        home: Scaffold(
            appBar: AppBar(title: const Text('Stock Training App')),
            drawer: const Drawers(),
            body: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: SafeArea(
                      child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Stocks",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                                fontWeight: FontWeight.bold)),
                        const Text('January 311',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                                fontWeight: FontWeight.bold)),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.black),
                                hintText: "Search",
                                prefix: Icon(Icons.search),
                                fillColor: Colors.grey,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                              ),
                              // onTap: () {
                              //   showSearch(
                              //       context: context,
                              //       delegate: StockSearchdelegate);
                              // },
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height - 100,
                            child: StockList(stocks: Stock.getAll())),
                      ],
                    ),
                  )),
                )
              ],
            )));
  }
}
