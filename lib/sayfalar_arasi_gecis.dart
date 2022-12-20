import 'package:flutter/material.dart';
import 'package:flutter_baslangic/loginekrani/login_ekran_class.dart';
import 'package:flutter_baslangic/yemek_uygulamasi/yemek_class.dart';
import 'ilhamveruygulamasi/my_home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rows',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePageMain(),
    );
  }
}

class MyHomePageMain extends StatefulWidget {


  @override
  State<MyHomePageMain> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageMain> {
  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData ekranOlcusu = MediaQuery.of(context);
    final double ekranGenisligi = ekranOlcusu.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("AnaSayfa"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePageLog(title: "Login Ekrani"),));
            }, child: Text("Login \nEkrani!")),
          ),
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePageIlham(title: "İlham Ver"),));
            }, child: Text("İlham Ver \nUygulamasi!")),
          ),
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePageYemek(title: "Git"),));
            }, child: Text("Yemek \nUygulamasi!")),
          ),

        ],
      ),
    );
  }
}