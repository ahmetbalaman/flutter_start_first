import 'package:flutter/material.dart';


class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();

}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: GridView.count(crossAxisCount: 2,
        childAspectRatio: 2/4 ,
        children: [
          Card(
            elevation: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star),
                Text("Yıldız"),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.wb_sunny),
                Text("Güneş"),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.brightness_2),
                Text("Ay"),
              ],
            ),
          ),
          


        ],
        )
    );
  }
}

