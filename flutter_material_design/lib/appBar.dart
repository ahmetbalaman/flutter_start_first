import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_material_design/GridView.dart';
import 'package:flutter_material_design/future_builder_with_listview.dart';
import 'package:flutter_material_design/grid_view_dinamik.dart';
import 'package:flutter_material_design/tabs/tabs.dart';
import 'ListViews.dart';
import 'bottom_navigation_bar.dart';
import 'cards.dart';
import 'list_view_builder.dart';

class AppbarPage extends StatefulWidget {
  const AppbarPage({Key? key}) : super(key: key);
  @override
  State<AppbarPage> createState() => _AppbarPageState();
}
class _AppbarPageState extends State<AppbarPage> {
  bool butonaktif = false;
  bool basildi = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List pages = [
      const CardPage(),
      const GridViewPage(),
      GridViewDynamicPage(),
      const ListViewlar(),
      ListViewBuilderPage(),
      const future_builder_page(),
      const Tabs(),
      const BottomNavigationBarPage()
    ];
    return Scaffold(
      appBar: AppBar(
        title: basildi
            ? TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                  hintText: "Arama...",
                  hintStyle: TextStyle(color: Colors.white),
                  focusColor: Colors.white,
                ),
                onChanged: (String arama) {
                  print(arama);
                },
              )
            : const Text("AppBar İslemleri"),
        actions: [
          Visibility(
            visible: !basildi,
            child: Container(
                width: 50, decoration: boxDecoration, child: buildTextButton()),
          ),
          buildIconButton(),
          buildPopupMenuButton(),
        ],
      ),
      body: pages[index],
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height:100,child: DrawerHeader(child: Center(child: Icon(Icons.person),)),),
            Expanded(
              child: ListView.builder(
                itemCount: pages.length,
                itemBuilder: (context, indeks) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        index = indeks;
                      });
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      title: Text(pages[indeks].toString()),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildTextButton() {
    return TextButton(
        onPressed: butonaktif
            ? () {
                SystemNavigator.pop();
              }
            : null,
        child: const Text(
          "Çıkış",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }

  IconButton buildIconButton() {
    return IconButton(
        tooltip: "Bu Bir İconddur",
        onPressed: () {
          setState(() {
            basildi = !basildi;
          });
        },
        icon: basildi ? const Icon(Icons.cancel) : const Icon(Icons.search));
  }

  PopupMenuButton<int> buildPopupMenuButton() {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (context) => [
        const PopupMenuItem(
          child: Text("Cards"),
          value: 1,
        ),
        const PopupMenuItem(
          child: Text("GridView"),
          value: 2,
        ),
        const PopupMenuItem(
          child: Text("GridView.Builder Dinamik Liste"),
          value: 3,
        ),
        const PopupMenuItem(
          child: Text("ListView"),
          value: 4,
        ),
        const PopupMenuItem(
          child: Text("ListView.Builder Dinamik Liste "),
          value: 5,
        ),
        const PopupMenuItem(
          child: Text("Future Builder List "),
          value: 6,
        ),
        const PopupMenuItem(
          child: Text("Tabs "),
          value: 7,
        ),
        const PopupMenuItem(
          child: Text("Bottom Navigation Bar "),
          value: 8,
        ),
      ],
      onSelected: (select) {
        switch (select) {
          case 1:
            setState(() {
              index = 0;
            });
            break;
          case 2:
            setState(() {
              index = 1;
            });
            break;

          case 3:
            setState(() {
              index = 2;
            });

            break;

          case 4:
            setState(() {
              index = 3;
            });
            break;
          case 5:
            setState(() {
              index = 4;
            });
            break;

          case 6:
            setState(() {
              index = 5;
            });
            break;

          case 7:
            setState(() {
              index = 6;
            });
            break;

          case 8:
            setState(() {
              index = 7;
            });
            break;
        }
      },
    );
  }
}
