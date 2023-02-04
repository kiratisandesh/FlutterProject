import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBOVLsd5LJE4WLCnkXt0m8dUgpyTcjF0dk",
            appId: "1:664715232802:android:f735885b6d69b3a278ac7b",
            messagingSenderId: "664715232802",
            projectId: "stockapp-9fc59",
            storageBucket: "stockapp-9fc59.appspot.com"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Stock Training App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: LoginPage(),
    );
  }
}
