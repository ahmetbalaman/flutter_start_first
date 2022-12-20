import 'package:flutter/material.dart';
import 'package:flutter_material_design/tabs/tabs_page_1.dart';
import 'package:flutter_material_design/tabs/tabs_page_2.dart';
import 'package:flutter_material_design/tabs/tabs_page_3.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            body: Column(children: const [
          TabBar(//NOT APPBAR KISMINDA DA TANITABİLİRİZ BOTTOM KODU İLE
            labelColor: Colors.red,
            tabs: [
              Tab(text: "bir"),
              Tab(icon: Icon(Icons.two_k_outlined)),
              Tab(
                  text: "üç",
                  icon: Icon(
                    Icons.movie,
                    color: Colors.red,
                  ))
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                TabsPage1(),
                TabsPage2(),
                TabsPage3(),
              ],
            ),
          ),
        ])));
  }
}
