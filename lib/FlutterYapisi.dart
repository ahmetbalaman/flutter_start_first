import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Yapisi",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:const OrnekStateSayfasi(title:"Flutter"),
      //const StaateSayfa(),
      // const MyHomePage(title: "Flutter yapisi"),
    );
  }
}
class OrnekStateSayfasi extends StatefulWidget{
  const OrnekStateSayfasi({Key? key,required this.title}):super(key:key);
  final String title;
  @override
  State<OrnekStateSayfasi> createState() => _OrnekStateSayfasi();
}
class _OrnekStateSayfasi extends State<OrnekStateSayfasi>{
  @override
  void initState() {
    // TODO: implement initState
  }
  int? sayi=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text("$sayi")),
          ElevatedButton(onPressed: (){
            print("Basildi_");
            setState(() {//değişken olan sayfa için bütün sayfayı yeniler
              //not:bunu yapabilmek için sayfayı statefull olarak kullanmak şartdır.
                sayi=(sayi!+1);
              });
          }, child: const Text("Bas")),
        ],
      ),
    );
  }

}


//stateless sayfa örneği(sabit değişmeyen)

class StaateSayfa extends StatelessWidget {
  const StaateSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("StateSayfası")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          height: 200,
          decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange,
          ),
          child: const Center(child: Text("Stateless sayfa")),
    ),
        ],
      ),

    );
  }
}

//ÖRNEK STATEFULL SAYFASI
class OrnekStateSayfasi2 extends StatefulWidget {
  const OrnekStateSayfasi2({Key? key}) : super(key: key);

  @override
  State<OrnekStateSayfasi2> createState() => _OrnekStateSayfasi2State();
}

class _OrnekStateSayfasi2State extends State<OrnekStateSayfasi2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





