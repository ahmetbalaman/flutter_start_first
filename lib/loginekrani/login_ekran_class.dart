import 'package:flutter/material.dart';

class MyHomePageLog extends StatefulWidget {
  const MyHomePageLog({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePageLog> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePageLog> {
  //TEXTEDİTİNG CONTROLLER İLE DEĞİŞTİRİLMİŞ BİR VERİYİ TEXTFİELD KISMINDAN ÇEKİP ALABİLİRİZ.
  TextEditingController kullanici = TextEditingController();
  TextEditingController sifre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final MediaQueryData ekranOlcusu = MediaQuery.of(context);
    final double ekranGenisligi = ekranOlcusu.size.width;
    final double ekranyuksek = ekranOlcusu.size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ekranyuksek / 10),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(ekranGenisligi / 6), // Image radius
                    child: Image.asset('fotograflar/steve.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ekranGenisligi / 6, bottom: ekranGenisligi / 6),
                child: TextField(
                  controller: kullanici,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Kullanici adiniz",
                  ),
                ),
              ),
              TextField(
                controller: sifre,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Sifreniz",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranGenisligi / 20),
                child: ElevatedButton(
                  onPressed: () {
                    //kendi sayfamızda kayıt ettiğimiz nesneyi tanıtıp nesne olarak yolladık
                    kullanicilar kisi = kullanicilar(
                        kullaniciad: kullanici.text, sifre: sifre.text);
                    //başka bir sayfaya veri göndermek için kullandığımız kod şekli.
                    Navigator.pushReplacement(
                        //PUSH REPLACEMENT GİTTİĞİMİZ YÖNÜN GERİ KISMINA BASAR İSEK ANASAYFA DÖNDÜRÜR
                        context,
                        MaterialPageRoute(
                            builder: (context) => hosgeldin(kisi)));
                  },
                  child: const Text("Giris Yap"),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Yardım seçildi");
                },
                child: const Text("Yardım?"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Geri Dön!!",
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    //Pop bir defalık geri dönme imkanı sunarken bu direk ana sayfamıza geçmemizi sağlar
                  },
                  child: const Text(
                    "Komple Geri Dön!!",
                  ))
            ],
          ),
        ));
  }
}

class kullanicilar {
  String? kullaniciad;
  String? sifre;

  kullanicilar({required this.kullaniciad, required this.sifre});
}

class hosgeldin extends StatelessWidget {
  //alıcı class'ına bir tane kisi constructor oluşturduk
  kullanicilar kisi;

  hosgeldin(this.kisi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Giris Yapildi"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //ve bu constructordan gönderilecek veriyi burda yazımasını istedik
              Text("Hoşgeldin ${kisi.kullaniciad}"),
              Text("sifreniz ${kisi.sifre}"),
            ],
          ),
        ));
  }
}
