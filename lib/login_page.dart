import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stock_training_app/home_page.dart';
import 'package:stock_training_app/register_page.dart';

import 'AuthMethod.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(" Login Page"),
          centerTitle: false,
        ),
        body: Column(children: [
          const SizedBox(height: 10),
          TextField(
            controller: _name,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                fillColor: Colors.grey,
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _pwd,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                fillColor: Colors.grey,
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  try {
                    String res = await AuthMethod()
                        .login(email: _name.text, password: _pwd.text);
                    print(res);

                    if (res == 'Success') {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    } else {
                      print('login failed !!!');
                    }
                  } on FirebaseAuthException catch (e) {
                    print(e);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const HomePage(),
                    //     ));
                  }
                }),
            const Text(" | Don't have an account?",
                style: TextStyle(color: Colors.black)),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterPage()));
                },
                child: const Text("Register",
                    style: TextStyle(color: Color.fromARGB(255, 0, 140, 255))))
            //     }
            // Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginScreen(),));},)
          ])
        ]),
      ),
    );
  }
}

void showMessage(BuildContext context, final msg) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(msg),
      );
    },
  );
}
