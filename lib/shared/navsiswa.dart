import 'package:cakapp/Pengumuman/index.dart';
import 'package:cakapp/TataTertib/index.dart';
import 'package:cakapp/PoinSiswa/index.dart';
import 'package:cakapp/DataSiswa/index.dart';
import 'package:cakapp/siswa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget> [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/eevee.png'),
                radius: 40,
              ),
              accountName: Text("Ulza Paramarta"),
              accountEmail:Text("3103119190@student.smktelkom-pwt.sch.id") ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Siswa() ));
            },
          ),
          ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text('Pengumuman'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => pengumuman() ));
            },
          ),
          ListTile(
            leading: Icon(Icons.rule_sharp),
            title: Text('Indikator'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => tata_tertib() ));
            },
          ),
          ListTile(
            leading: Icon(Icons.control_point),
            title: Text('Poin Siswa'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => poin_siswa() ));
            },
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Data Siswa'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => data_siswa() ));
            },
          ),
        ],
      ),
    );
  }
}