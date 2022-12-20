import 'package:flutter/material.dart';

class future_builder_page extends StatefulWidget {
  const future_builder_page({Key? key}) : super(key: key);

  @override
  State<future_builder_page> createState() => _future_builder_pageState();
}

class _future_builder_pageState extends State<future_builder_page> {
  Future<List<String>> verilerigetir() async {
    var ulkeler = ["Deneme-1", "Deneme0", "Deneme1", "Deneme2", "Deneme3"];

    return ulkeler;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<String>>(
        future: verilerigetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var ulkelerliste = snapshot.data;
            return ListView.builder(
                itemCount: ulkelerliste!.length,
                itemBuilder: (context, indeks) {
                  return Card(
                    elevation: 2,
                    child: Row(
                      children: [Text(ulkelerliste[indeks])],
                    ),
                  );
                });
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
