import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Galeri'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Image.asset("fotograflar/1.jpg",
             width: 250,height: 250,),
             const Text("Manzara",
               textAlign: TextAlign.center,
             ),
             Image.asset("fotograflar/2.jpg",
               width: MediaQuery.of(context).size.width*0.5  ,height: 250,),
             const Text("Manzara",
               textAlign: TextAlign.center,
             ),
             Image.asset("fotograflar/3.jpg",
               width: 250,height: 250,),
             const Text("Manzara",
               textAlign: TextAlign.center,
             ),
             Image.asset("fotograflar/4.jpg",
               width: 250,height: 250,),
             const Text("Manzara",
               textAlign: TextAlign.center,
             ),
           ],
          ),
        ),
      ),
    );
  }
}

