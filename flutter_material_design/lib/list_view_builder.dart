import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_view_builder_tiklanilan_sayfa.dart';

class ListViewBuilderPage extends StatefulWidget {
  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

// Future<List<String>> verilerial() async{
//
//   var ulkeler =<String>[
//     "Almanya",
//     "Belçika",
//     "Fransa",
//     "Türkiye",
//     "Amerika",
//     "Yeni Zellanda"
//   ];
//
//
//
//   return ulkeler;
// }

TextEditingController kontrol = TextEditingController();
late List ulkeler = [
  "Almanya",
  "Belçika",
  "Fransa",
  "Türkiye",
  "Amerika",
  "Yeni Zellanda"
];

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  String? kontrolc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool arama = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // scrollDirection: Axis.vertical, yönde verebiliriz istersek
        itemCount: ulkeler.length,
        itemBuilder: (context, indeks) {
          return GestureDetector(
            onTap: () {
              print("${ulkeler[indeks]} Tıklandı");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ListViewBuilderTiklandi(ulkeIsmi: ulkeler[indeks])));
            },
            child: SizedBox(
              height: 50,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "${ulkeler[indeks]}",
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    const Spacer(),
                    PopupMenuButton(
                      itemBuilder: (context) => [
                        const PopupMenuItem(child: Text("Sil"), value: 1),
                        const PopupMenuItem(child: Text("Güncelle"), value: 2),
                      ],
                      onSelected: (secilen) {
                        switch (secilen) {
                          case 1:
                            print("case 1");
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text("Emin misiniz"),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Hayır")),
                                      TextButton(
                                          onPressed: () {
                                            var result =
                                                ulkeler.removeAt(indeks);
                                            setState(() {});
                                            //üstteki değere göre bir tane remove yaptığımız zaan alttaki setstate boşluk değer yapsa bile yeniliyor sayfayı
                                            // ulkeler.remove("Almanya"); O İSİMDEKİNİ SİL
                                            result != null
                                                ? kontrolc =
                                                    "Başarılı bir şekilde silindi!"
                                                : kontrolc = "Hata!!";
                                            Navigator.pop(context);
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: Text(kontrolc!)));
                                          },
                                          child: Text("Evet")),
                                    ],
                                  );
                                });
                            break;
                          case 2:
                            print("${ulkeler[indeks]} Güncellendi");
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text("Güncelle"),
                                    content: TextField(
                                      controller: kontrol,
                                      decoration: InputDecoration(
                                          labelText: "İsim Şehri",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0))),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            kontrol.clear();
                                          },
                                          child: const Text("İptal")),
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              ulkeler[indeks] = kontrol.text;
                                              Navigator.pop(context);
                                              kontrol.clear();
                                            });
                                          },
                                          child: const Text("Gir")),
                                    ],
                                  );
                                });
                            break;
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          _showDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  // flutter defined function
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Ekle"),
          content: TextField(
            controller: kontrol,
            decoration: InputDecoration(
                labelText: "İsim Şehri",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  kontrol.clear();
                },
                child: const Text("İptal")),
            TextButton(
                onPressed: () {
                  ulkeler.add(kontrol.text);
                  kontrol.clear();
                  Navigator.pop(context);
                },
                child: const Text("Gir")),
          ],
        );
      });
}
