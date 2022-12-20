import 'package:flutter/material.dart';
class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  bool butonaktif = false;
  bool basildi = false;

  @override
  Widget build(BuildContext context) {
    var olcek = MediaQuery.of(context);
    var yukseklik = olcek.size.height;
    var genislik = olcek.size.width;
    return Scaffold(
      body: appBarMain(genislik, yukseklik),
    );
  }


Column appBarMain(double genislik, double yukseklik) {
  return Column(
    children: [
      Row(
        children: [
          buildSizedBox(genislik, yukseklik),
          buildSizedBox(genislik, yukseklik),
        ],
      ),
      Row(
        children: [
          buildSizedBox(genislik, yukseklik),
          buildSizedBox(genislik, yukseklik),
        ],
      ),
    ],
  );
}


  SizedBox buildSizedBox(double genislik, double yukseklik) {
    return SizedBox(
      width: genislik / 2,
      height: yukseklik / 2.5,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Card"),
          ],
        ),
        elevation: 10,
        color: Colors.red,
        shadowColor: Colors.red,
      ),
    );
  }


}


BoxDecoration get boxDecoration => BoxDecoration(
    color: Colors.blue.shade400,
    border: Border.all(color: Colors.black, width: 0),
    borderRadius: const BorderRadius.all(Radius.circular(10.0)));
