import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class data_siswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Siswa"),
      ),
      drawer: NavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("data siswa")
          ],
        ),
      ),
    );
  }
}