import 'package:flutter/material.dart';
import 'AuthMethod.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _pwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration Page',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text(" Registration Page")),
        body: Column(children: [
          const SizedBox(height: 10),
          TextField(
            controller: _name,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _pwd,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 40),
            ElevatedButton(
                child: const Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  String res = await AuthMethod()
                      .register(email: _name.text, password: _pwd.text);
                  print(res);
                  // ignore: use_build_context_synchronously
                  showMessage(context, "Account created successfully");
                  if (res == 'Success') {
                    // ignore: use_build_context_synchronously
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  }
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const LoginPage(),
                  //     ));
                }),
            const SizedBox(height: 10),
            const Text(" | Already have an account?",
                style: TextStyle(color: Colors.black)),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterPage()));
                },
                child: const Text("Login",
                    style: TextStyle(color: Color.fromARGB(255, 0, 140, 255))))
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
