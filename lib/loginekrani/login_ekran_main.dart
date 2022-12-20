import 'package:flutter/material.dart';
import 'package:flutter_baslangic/loginekrani/login_ekran_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Panel ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePageLog(
        title: "Login Ekrani",
      ),
    );
  }
}
