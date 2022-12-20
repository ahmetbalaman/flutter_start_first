import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Row Yapısı'),
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
  @override
  void initState() {
    // TODO: implement initState
    print("Çalışıyor he");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min, //sınır hatlarını 1e indirir
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, //nereye ortalanması gerektiğini söyler.
            children: [
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.yellow),
                ],
              ),
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.red),
                ],
              ),
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.green),
                ],
              ),
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.blue),
                ],
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.red),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    width: 80,
                    height: 80,
                    child: Center(
                      child:Align(
                        alignment: Alignment.topLeft,
                        child: Text("TEŞEKKÜRLER SEKİNE"),),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 3,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.yellow),
                ],
              ),
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.green),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
//stack yapısı
/*
Stack(
        children: [
          Container(width: 30,height: 100,color: Colors.blue,),
          Container(width: 20,height: 70,color: Colors.red,),
          Container(width: 130,height: 60,color: Colors.yellow,),
        ],
      ),
 */

//row yapısı
/*Row(
        children: [
          Container(width: 80,height: 80,color: Colors.blue,),
          Container(width: 80,height: 80,color: Colors.red,),
          Container(width: 80,height: 80,color: Colors.yellow,),
        ],
      ),*/
//COLUMN YAPISI
/*Column(
        children: [
          Container(width: 80,height: 80,color: Colors.blue,),
          Container(width: 80,height: 80,color: Colors.red,),
          Container(width: 80,height: 80,color: Colors.yellow,),
        ],
      ),*/
