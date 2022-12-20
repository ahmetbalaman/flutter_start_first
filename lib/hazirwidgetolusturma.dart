import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HazirWidgetler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'HazirWidgetler'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RedBox(),
          CustomText("merhaba efendim",25),
          BlueBox(),
        ],
      ),
    );
  }
}

class RedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}
class BlueBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black,width: 8
        ),
      ),
    );
  }
}
class CustomText extends StatelessWidget{

  String? textName;
  double? boyut;
  CustomText(this.textName, this.boyut);

  @override
  Widget build(BuildContext context) {
    return Text(textName.toString(),
      style: TextStyle(
        fontSize: boyut,
      ),

    );
  }

}