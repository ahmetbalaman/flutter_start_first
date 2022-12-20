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
  }

  @override
  Widget build(BuildContext context) {
    var ekranOlcusu=MediaQuery.of(context);
    final double ekranGenisligi=ekranOlcusu.size.width;
    final double ekranYuksekligi=ekranOlcusu.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child:Center(
        child:Column(
        children: [

          Image.asset("fotograflar/1.jpg",
          width: ekranGenisligi*0.95,),
          Container(width: ekranGenisligi*0.95,height:ekranYuksekligi*0.35,decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
          ),),
          Text("Merhaba"
          ,style: TextStyle(
              fontSize: ekranGenisligi*0.2,
            ),)


        ],
      ),
      ),
      ),
    );
  }
}

/*yöntem 1 çoklu ekran desteği
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return TelefonFormat();
          } else {
            return TabletFormat();
          }
        },
      ),
 */
/*
class TabletFormat extends StatelessWidget {
  const TabletFormat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Tablet Formu"),
        ],
      ),
    );
    ;
  }
}

class TelefonFormat extends StatelessWidget {
  const TelefonFormat({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Telefon Formu"),
        ],
      ),
    );
    ;
  }
}
*/