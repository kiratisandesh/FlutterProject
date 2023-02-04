import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import '../login_page.dart';
import '../terminology.dart';
import 'calculator.dart';
import 'favourites.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text(
                "Welcome to Stock Training App",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            ListTile(
                title: const Text("Basic Terminology"),
                subtitle: const Text("Stock Market terms"),
                leading: const Icon(Icons.add),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Terminology())));
                }),
            ListTile(
                title: const Text("Stocks"),
                subtitle: const Text("Stocks"),
                leading: const Icon(Icons.add),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const HomePage())));
                  print("Stocks Pressed");
                }),
            ListTile(
                title: const Text("Favourites"),
                subtitle: const Text("Favourite stocks"),
                leading: const Icon(Icons.add),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Favourites())));
                  print("Favourite Stocks Pressed");
                }),
            ListTile(
                title: const Text("Calculator"),
                subtitle: const Text("P/L calculator"),
                leading: const Icon(Icons.add),
                onTap: () {
                  print("Calculator Pressed");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const Calculator())));
                }),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    print("Signed Out");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LoginPage())));
                  });
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: ((context) => const LoginPage())));
                },
                child: const Text("Logout")),
          ],
        ));
  }
}
