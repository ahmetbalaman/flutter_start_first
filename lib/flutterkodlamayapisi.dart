import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlk Uygulama',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'İlk Projem'),
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
  bool secenek=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Text(secenek ? "Dogru":"Yanlis",
            style: TextStyle(
              fontWeight: secenek ? FontWeight.bold : FontWeight.normal,
              color: secenek ? Colors.green : Colors.red,
            ),),
            ElevatedButton(
                onPressed: () {setState(() {
                  secenek=true;
                });},child: Text("İsaret 1!")),

            ElevatedButton(
                onPressed: () {setState(() {
                  secenek=false;
                });},child: Text("İsaret 2!")),
          ],
        ),
      )
    );
  }
}
//
// Visibility(
// visible= secenek,
// child:blabla
// )