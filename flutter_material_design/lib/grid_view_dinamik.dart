import 'package:flutter/material.dart';
import 'package:flutter_material_design/list_view_builder.dart';

class GridViewDynamicPage extends StatefulWidget {
  GridViewDynamicPage({Key? key}) : super(key: key);

  @override
  State<GridViewDynamicPage> createState() => _GridViewDynamicPageState();
}

class _GridViewDynamicPageState extends State<GridViewDynamicPage> {
  String? kontrolc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 2 / 1),
          itemCount: ulkeler.length,
          itemBuilder: (context, indeks) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10),child: Text("${ulkeler[indeks]}")),

                ],
              ),
            );
          },
        ));
  }
}
