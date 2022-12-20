import 'package:flutter/material.dart';

class MyHomePageYemek extends StatefulWidget {
  const MyHomePageYemek({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePageYemek> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageYemek> {
  @override
  void initState() {
    // TODO: implement initState
    print("Çalışıyor he");
  }
  @override
  Widget build(BuildContext context) {
    var ekranolcu=MediaQuery.of(context);
    final double ekrangenis=ekranolcu.size.width;
    final double ekranyuksek=ekranolcu.size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(widget.title),
        ),
        body: _icerik(ekrangenis, ekranyuksek)
    );
  }

  SingleChildScrollView _icerik(double ekrangenis, double ekranyuksek) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                width: ekrangenis,
                child: Image.asset("fotograflar/yemek.jpg")),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekrangenis/8,
                    child: TextButton(
                      onPressed: (){},
                      child:yazi(ekrangenis/25, "Beğen!!"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekrangenis/8,
                    child: TextButton(onPressed: (){}, child: yazi(ekrangenis/25, "Yorum Yap!"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekrangenis/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Köfte!",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold
                    ),),

                  Row(
                    children: [
                      yazi(ekrangenis/25, "Izgara üzerinde pişirmeye uygun!"),
                      Spacer(),
                      yazi(ekrangenis/25, "8 Ağustos"),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(ekranyuksek/100),
                    child: yazi(ekrangenis/25, "Köfte	harcını	hazırlamak	için,	soğanları	rendeleyin	ve"
                        "maydanozları	ince	ince	kıyın.	İsterseniz,	bir	diş	sarımsak	da	"
                        "ekleyebilirsiniz."
                        "Soğan,	maydanoz,	kıyma,	yumurta,	zeytinyağı	ve	tuzu	bir	kaba	"
                        "alıp	iyice	yoğurun.	Bu	sırada	istediğiniz	baharatları	da	ekleyerek	"
                        "yoğurmaya	devam	edin."
                        "Hazırladığınız	harcın	üzerini	streç	filmle	kapatarak	yarım	saat	"
                        "buzdolabında	dinlendirin."
                        "Ardından	harçtan	ceviz	büyüklüğünde	parçalar	koparıp	"
                        "yuvarlayın.	1	cm	olacak	şekilde	üzerine	bastırarak	yassılaştırın"),
                  ),
                ],
              ),
            ),

          ],
        ),
      );
  }
}

class yazi extends StatelessWidget{
  double? yaziBoyut;
  String? yaziYaz;

  yazi(this.yaziBoyut, this.yaziYaz);

  @override
  Widget build(BuildContext context) {
    return Text(yaziYaz!,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: yaziBoyut,
        color: Colors.black,
      ),
    );
  }
}