import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Builder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<int> faktoriyelHesapla(int sayi) async{
    int sonuc=1;
    for(var i=1;i<=sayi;i++){
       sonuc = i*sonuc;
    }
    return sonuc;
  }


  @override
  void initState() {
    // TODO: implement initState
    print("Çalışıyor he");
  }

  TextEditingController kontrol=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
      body:Center(
        child: Column(
          children: [

            FutureBuilder<int>(
             future: faktoriyelHesapla(5),
             builder: (context,snapshot){
              if(snapshot.hasError){
                print("Hata Sonucu ${snapshot.hasError}");
              }
              if(snapshot.hasData){
                return Text("Sonuc ${snapshot.data}");
              }else{
                return Text("Gösterilecek bir şey yok");
              }
             }
             ),
            TextField(
              controller: kontrol,
              decoration:const InputDecoration(
                hintText: "Giriş",
              ),
              style: TextStyle(
                color: Colors.red
              ),
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Merhaba", onPressed: () {
          print("Off çok iyi bastın bi da bas");  },
      ),
    );
  }
}
