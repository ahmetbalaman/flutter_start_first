import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
  bool secenek = false;
  bool secenek1 = false;
  bool secenek2 = false;
  bool progressbargorun = false;
  var secenekler = [false, true, false];
  int secilenindeks = 0;
  int radiosecenek = 0;

  double sliderOran = 0.0;
  String fotoyol = "0.jpg";

  //hoca yaptı
  Color _selectedColor = Colors.grey;
  Color _defaultColor = Colors.black;
  int _selectedItemRadio = 0;

  List<String> ulkelerListe = [];
  String secilenUlke = "Türkiye";

  TextEditingController tfsaat = TextEditingController();
  TextEditingController tftarih = TextEditingController();
  String gestureDurum="";
//burayı da
  // var trabzon=renkler[3];
  //besiktas,galatasaray,fenerbahce;

  @override
  void initState() {
    super.initState();
    ulkelerListe.add("Türkiye");
    ulkelerListe.add("İtalya");
    ulkelerListe.add("Almanya");
    ulkelerListe.add("Rusya");
    ulkelerListe.add("Çin");
    ulkelerListe.add("Japonya");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            //kendi elimizle burda geri dönme tuşu ekleyebiliriz.
            icon: const Icon(Icons.keyboard_arrow_right),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WebViewPage()));
            },
          ),
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Switch Yapısı"),
                Switch(
                    value: secenek,
                    onChanged: (veri) {
                      setState(() {
                        secenek = veri;
                        print("şu anki $secenek");
                        //SWİTCH YAPISI BU ŞEKİLDEDİR.
                      });
                    }),
                const Text("ToggleButton Yapısı"),
                ToggleButtons(
                  children: const [
                    Icon(Icons.arrow_back),
                    Icon(Icons.arrow_upward),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                  isSelected: secenekler,
                  onPressed: (int indek) {
                    setState(() {
                      secilenindeks = indek;
                      secenekler[secilenindeks] = !secenekler[secilenindeks];
                      print(
                          "${secilenindeks + 1}.seçildi ve durumu: ${secenekler[secilenindeks]}");
                    });
                  },
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("CheckBox Yapısı"),
                  ),
                ),
                CheckboxListTile(
                  title: const Text("deneme"),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      secenek1 = value!;
                      print("1.Checkbox durumu $secenek1");
                    });
                  },
                  value: secenek1,
                  subtitle: const Text("B"),
                ),
                CheckboxListTile(
                  title: const Text("deneme 2"),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      secenek2 = value!;
                      print("2.Checkbox durumu $secenek2");
                    });
                  },
                  value: secenek2,
                  subtitle: const Text("A"),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("RadioBotton Yapısı"),
                  ),
                ),
                ListTile(
                  //List tile yaparak sadece buton kısmını da radiobutton haline getirebiliriz.
                  title: Text("Trabzon"),
                  //garip garip işlemler
                  leading: Radio(
                    value: 3,
                    groupValue: radiosecenek,
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.purple),
                    onChanged: (int? veri) =>
                        setState(() => radiosecenek = veri!),
                  ),
                ),
                ListTile(
                  //List tile yaparak sadece buton kısmını da radiobutton haline getirebiliriz.
                  title: Text("Beşiktaş"),
                  //garip garip işlemler
                  leading: Radio(
                    value: 4,
                    groupValue: radiosecenek,
                    fillColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black),
                    onChanged: (int? veri) =>
                        setState(() => radiosecenek = veri!),
                  ),
                ),
                const Text("İkinci Farklı Radiobutton"),
                RadioListTile(
                    selectedTileColor: Colors.black,
                    title: Text("Galatasaray",
                        style: TextStyle(
                            color: radiosecenek == 1
                                ? _selectedColor
                                : _defaultColor,
                            fontWeight: FontWeight.bold)),
                    value: 1,
                    groupValue: radiosecenek,
                    //tasarım kısmı
                    activeColor: Colors.red,
                    onChanged: (int? veri) {
                      setState(() {
                        radiosecenek = veri!;
                        _selectedColor = Colors.yellow;
                      });
                    }),
                RadioListTile(
                    title: Text("Fenerbahçe",
                        style: TextStyle(
                            color: radiosecenek == 2
                                ? _selectedColor
                                : _defaultColor,
                            fontWeight: FontWeight.bold)),
                    value: 2, //valueyi burdan alır
                    groupValue:
                        radiosecenek, //ortaklaşa kullanacakları value de burdan
                    //tasarım kısmı
                    activeColor: Colors.yellow,
                    onChanged: (int? veri) {
                      setState(() {
                        radiosecenek = veri!;
                        _selectedColor = Colors.blue;
                      });
                    }),
                const Text("Progress Bar"),
                Visibility(
                  visible: progressbargorun,
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                  ),
                ),
                ElevatedButton(
                    onPressed: () =>
                        setState(() => (progressbargorun = !progressbargorun)),
                    child: Text("AÇ/KAPA")),

                const Text("Slider"),
                Slider(
                  max: 100,
                  min: 0,
                  value: sliderOran,
                  onChanged: (double arg) => setState(() => (sliderOran = arg)),
                ),
                Text("Oran: ${(sliderOran).toInt()}"),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text("Image Path Olayı"),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        height: 200,
                        //FADE IN IMAGE BİR FOTOĞRAF YÜKLENİRKEN BAŞKA BİR OFTOĞRAF GÖSTERMEK İÇİN KULLANILIR
                        child: FadeInImage.assetNetwork(
                            placeholder: "fotograflar/yukluyor.jpg",
                            image: "Fotograflar/$fotoyol")
                        // child: Image.asset("Fotograflar/$fotoyol")),
                        ),
                    // Image.network("dosya yolu") ikinci bir yöntem olarakta bunu kullanabiliriz.
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Radio(
                      value: 1,
                      groupValue: radiosecenek,
                      onChanged: (int? ver) {
                        setState(() {
                          radiosecenek = ver!;
                          fotoyol = "3.jpg";
                        });
                      }),
                  Text("1.Foto"),
                  Radio(
                      value: 2,
                      groupValue: radiosecenek,
                      onChanged: (int? ver) {
                        setState(() {
                          radiosecenek = ver!;
                          fotoyol = "4.jpg";
                        });
                      }),
                  const Text("2.Foto"),
                ]),

                const Text("Date/Time Saat Picker"),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: TextField(
                    readOnly: true,
                    controller: tfsaat,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Saati giriniz.",
                    ),
                    onTap: () {
                      showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                      ).then((alinansaat) {
                        setState(() {
                          tfsaat.text =
                              "${alinansaat!.hour}:${alinansaat.minute}";
                        });
                      });
                    },
                  ),
                ),
                const Text("Date/Time Date Picker"),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: TextField(
                    readOnly: true,
                    controller: tftarih,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Tarih giriniz.",
                    ),
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2050),
                      ).then((alinantarih) {
                        setState(() {
                          tftarih.text =
                              "${alinantarih!.day}/${alinantarih.month}/${alinantarih.year}";
                        });
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: const Text("DropDownButton "),
                ),
                DropdownButton<String>(
                    value: secilenUlke,
                    items: ulkelerListe
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          "Ülke: ${value}",
                          style: TextStyle(color: Colors.purple, fontSize: 20),
                        ),
                      );
                    }).toList(),
                    icon: Icon(Icons.arrow_drop_down),
                    onChanged: (String? secilenveri) {
                      setState(() {
                        secilenUlke = secilenveri!;
                      });
                    }),
                Text("Seçilen Ulke : $secilenUlke"),

                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text("Gesture Detector"),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      gestureDurum="Tek Tik";
                    });

                    print("Tıklandı");
                  },
                  onDoubleTap:(){
                    setState(() {
                      gestureDurum="Çift Tik";
                    });
                    print("Çift Tıklandı");
                  },
                  onLongPress:(){
                    setState(() {
                      gestureDurum="Long Tik";
                    });
                    print("Uzun Tıklandı");
                  },


                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Text("Basılma Durumu : $gestureDurum"),





              ],
            ),
          ),
        ));
  }
}

class WebViewPage extends StatelessWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WebView"),
        ),
        body: WebView(
          initialUrl: "https://flutter.dev",
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
