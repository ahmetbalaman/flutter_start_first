import 'package:flutter/material.dart';

class TabsPage1 extends StatefulWidget {
  const TabsPage1({Key? key}) : super(key: key);

  @override
  State<TabsPage1> createState() => _TabsPage1State();
}

class _TabsPage1State extends State<TabsPage1> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:Text(
        "Sayfa 1",
        style: TextStyle(
            fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}
