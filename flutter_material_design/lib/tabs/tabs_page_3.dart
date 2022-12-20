import 'package:flutter/material.dart';

class TabsPage3 extends StatefulWidget {
  const TabsPage3({Key? key}) : super(key: key);

  @override
  State<TabsPage3> createState() => _TabsPage1State();
}

class _TabsPage1State extends State<TabsPage3> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:Text(
        "Sayfa 3",
        style: TextStyle(
            fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}
