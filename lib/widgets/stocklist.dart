import 'package:flutter/material.dart';

import '../models/stock.dart';

class StockList extends StatelessWidget {
  final List<Stock> stocks;

  StockList({super.key, required this.stocks});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          final stock = stocks[index];
          return ListTile(
            contentPadding: const EdgeInsets.all(10),
            title:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(stock.symbol,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500)),
              Text(stock.company,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500)),
            ]),
            trailing: Column(
              children: [
                Text("${stock.price}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
                Container(
                  width: 55,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green),
                  child: Text(
                    stock.rate,
                    style: const TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.grey);
        },
        itemCount: stocks.length);
  }
}
