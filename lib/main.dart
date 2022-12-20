import 'package:flutter/material.dart';
import 'package:flutter_material_design/girildi.dart';

import 'appBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form İşlemleri',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Materyal Design'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController kullaniciKontrol = TextEditingController();
  TextEditingController sifrekontrol = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
        icon:  Icon(Icons.account_circle),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AppbarPage()));
          },
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: formKey,
                child: Column(children: [
                  TextFormField(
                    controller: kullaniciKontrol,
                    decoration:
                        const InputDecoration(hintText: "Kullanici giriniz:"),
                    validator: (tfgirdisi) {
                      if (tfgirdisi!.isEmpty) {
                        return "Lütfen Kullanıcı Giriniz.";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: sifrekontrol,
                    decoration:
                    const InputDecoration(hintText: "Sifre giriniz:"),
                    validator: (tfgirdisi) {
                      if (tfgirdisi!.isEmpty) {
                        return "Lütfen Sifre Giriniz.";
                      }
                      if (tfgirdisi.length<6) {
                        return "En az 6 karakterli Giriniz.";
                      }

                      return null;
                    },
                  ),
                  ElevatedButton(
                      onPressed: (){
                    bool deger=formKey.currentState!.validate();
                    if(deger){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>girildi()));
                    }
                  }, child: Text("Giriş"))
                ]
                  ))
          ],
        ),
      ),
    );
  }
}
