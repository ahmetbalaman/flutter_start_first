import 'package:flutter/material.dart';
import 'package:flutter_material_design/appBar.dart';

class ListViewlar extends StatefulWidget {
  const ListViewlar({Key? key}) : super(key: key);

  @override
  State<ListViewlar> createState() => _ListViewlarState();
}

class _ListViewlarState extends State<ListViewlar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          buildListTile(baslik: "Güneş",
              altBaslik: "Güneş Alt başlık",
              icon: Icons.wb_sunny),
          buildListTile(baslik: "Ay",
              altBaslik: "Ay Alt başlık",
              icon: Icons.brightness_2),
          buildListTile(baslik: "Yıldız",
              altBaslik: "Yıldız Alt başlık",
              icon: Icons.star),
          buildListTile(baslik: "Yıldız",
              altBaslik: "Yıldız Alt başlık",
              icon: Icons.star),
          buildGestureDetector(),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(child:Text("Container Tasarım"))
          ),

        ],

      ),
    );
  }
}

  GestureDetector buildGestureDetector() {
    return GestureDetector(
          child: Card(
            child: SizedBox(
              height: 50,
              child: Row(
                children: const [
                  Text("Card Tasarım"),
                  Spacer(),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
          ),
          onTap: (){
            print("Gesture Detector ile Card Tıklandı");
          },
        );
  }


  //LİSTTİLE YAPISI
  ListTile buildListTile({required String? baslik,required String? altBaslik,required IconData icon}) {
    return ListTile(
          leading: Icon(icon),
          title: Text("$baslik"),
          subtitle: Text("$altBaslik"),
          onTap: (){
            print("Tıklandı $baslik");
          },
          trailing: Icon(Icons.arrow_right),
        );
  }

