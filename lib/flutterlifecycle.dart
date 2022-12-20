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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    // TODO: implement initState
    print("init çalıştı");
    WidgetsBinding.instance!.addObserver(this);
  }
  @override


  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      print("İnactive Çalışır");
    }
    if (state == AppLifecycleState.paused) {
      print("paused Çalışır");
    }
    if (state == AppLifecycleState.resumed) {
      print("resumed Çalışır");
    }
    if (state == AppLifecycleState.detached) {
      print("detached Çalışır");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Build çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text("Life Cycle"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Merhaba"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const yeniSayfa()));
                },
                child: Text("Don't Touch Me!"))
          ],
        ),
      ),
    );
  }
}
class yeniSayfa extends StatefulWidget {
  const yeniSayfa({Key? key}) : super(key: key);


  @override
  State<yeniSayfa> createState() => _yeniSayfaState();
}

class _yeniSayfaState extends State<yeniSayfa> {
  @override
  void deactivate() {
    print("Deactive Çalışır");
    super.deactivate();
  }
  @override
  void dispose() {
    print("Dispose çalışır");
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("yenisayfa"),
      ),
      body: Column(
        children: [
          const Text("Hoşgeldin"),
          ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Come Back Soldier!")),
        ],
      ),
    );
  }
}

