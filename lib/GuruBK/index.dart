import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class guru_bk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Guru BK"),
        ),
        drawer: NavBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("guru bk")
            ],
          ),
        ),
      ),
    );
  }
}