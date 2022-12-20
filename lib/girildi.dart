import 'package:flutter/material.dart';

class girildi extends StatefulWidget {
  const girildi({Key? key}) : super(key: key);

  @override
  State<girildi> createState() => _girildiState();
}

class _girildiState extends State<girildi> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: const Center(child: Text("Hoşgeldiniz")),

    );
  }
}
