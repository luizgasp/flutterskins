import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'views/initial_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter's Clothing",
      debugShowCheckedModeBanner: false,
      home: ViewPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromRGBO(130, 87, 229, 1),
      ),
    );
  }
}
