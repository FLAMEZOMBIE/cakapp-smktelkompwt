import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class add_poin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambahkan Poin"),
      ),
      drawer: NavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Add Poin")
          ],
        ),
      ),
    );
  }
}