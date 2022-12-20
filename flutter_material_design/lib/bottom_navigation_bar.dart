import 'package:flutter/material.dart';
import 'package:flutter_material_design/tabs/tabs_page_1.dart';
import 'package:flutter_material_design/tabs/tabs_page_2.dart';
import 'package:flutter_material_design/tabs/tabs_page_3.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}
int index=0;
class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
   List pages=[const TabsPage1(),const TabsPage2(),const TabsPage3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:pages[index],
      bottomNavigationBar:BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one),
              label: "dene",

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two),
              label: "dene",

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_3),
              label: "dene"
          ),
        ],
        currentIndex: index,
        onTap: (indeks){
          setState(() {
            index=indeks;
          });
        },
      ),
    );
  }
}
