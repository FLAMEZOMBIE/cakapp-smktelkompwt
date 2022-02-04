import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class walikelas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wali Kelas"),
      ),
      drawer: NavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("walikelas")
          ],
        ),
      ),
    );
  }
}