import 'package:flutter/material.dart';
import 'package:flutter_baslangic/yemek_uygulamasi/yemek_class.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yemek Yemek',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePageYemek(title: 'Yemek Tarifi'),
    );
  }
}
