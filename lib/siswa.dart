import 'package:flutter/material.dart';
import 'package:cakapp/shared/navsiswa.dart';

void main() {
  runApp(Siswa());
}

class Siswa extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Image.asset('assets/images/telkomsch2.png', width: 90, height: 90,),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Selamat Datang Siswa Telkom'),
      ),
    );
  }
}