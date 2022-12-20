
import 'package:flutter/material.dart';

class MyHomePageIlham extends StatefulWidget {
  const MyHomePageIlham({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePageIlham> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageIlham> {


  @override
  Widget build(BuildContext context) {
    Future<bool> geriDonusTusu(BuildContext context) async{//future fonksiyonu ile çalıştırdığımız bir geri
      //dönüş tuşu algılama fonksiyonu
      print("Geri tusuna basildi");
      return true;//return false yaptığımızda kodu çalıştırmaz ama true yaptığımızda çalışır.
    }
    final MediaQueryData ekranOlcusu = MediaQuery.of(context);
    final double ekranGenisligi = ekranOlcusu.size.width;

    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
      leading: IconButton(//kendi elimizle burda geri dönme tuşu ekleyebiliriz.
        icon:const Icon(Icons.arrow_back),
        onPressed: (){
          print("Working back");
          Navigator.pop(context);
        },

      ),
      ),
      body: WillPopScope(
          onWillPop: ()=>geriDonusTusu(context),//aşağı widget kısmından olan geri dönüş tuşu
          child: _buildBody(ekranGenisligi)),
    );
  }

  SingleChildScrollView _buildBody(double ekranGenisligi) {
    return SingleChildScrollView(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: ekranGenisligi / 25
          ),
          _profilPhoto(ekranGenisligi),
          Text(
            "Steve Jobs",
            style: TextStyle(
              fontSize: ekranGenisligi / 8,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: ekranGenisligi / 2
          ),
         const Text(
            "Dünyayı değiştirebileceklerini düşünecek kadar çılgın olan insanlar, bunu yapan insanlardır.",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: ekranGenisligi / 2),
          _ilhamVerButonu()
        ]),
      ),
    );
  }

  ElevatedButton _ilhamVerButonu() {
    return ElevatedButton(
        onPressed: () {
          print("İlham Verildi!");
        },
        child: const Text("İlham Ver!!"),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.redAccent),
        ));
  }

  ClipOval _profilPhoto(double ekranGenisligi) {
    return ClipOval(
      child: SizedBox.fromSize(
        size: Size.fromRadius(ekranGenisligi / 6), // Image radius
        child: Image.asset('fotograflar/steve.jpg'),
      ),
    );
  }
}
