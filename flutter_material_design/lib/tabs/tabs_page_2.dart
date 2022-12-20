import 'package:flutter/material.dart';

class TabsPage2 extends StatefulWidget {
  const TabsPage2({Key? key}) : super(key: key);

  @override
  State<TabsPage2> createState() => _TabsPage1State();
}

class _TabsPage1State extends State<TabsPage2> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:Text(
        "Sayfa 2",
        style: TextStyle(
            fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}
