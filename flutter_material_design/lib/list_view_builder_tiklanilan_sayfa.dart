import 'package:flutter/material.dart';

class ListViewBuilderTiklandi extends StatelessWidget {

  String? ulkeIsmi;

  ListViewBuilderTiklandi({required this.ulkeIsmi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ulkeIsmi.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$ulkeIsmi",style: const TextStyle(fontSize: 50)),
          ],
        ),
      ),

    );
  }
}
