import 'package:cakapp/Pengumuman/index.dart';
import 'package:cakapp/TataTertib/index.dart';
import 'package:cakapp/PoinSiswa/index.dart';
import 'package:cakapp/NilaiKarakter/index.dart';
import 'package:cakapp/GuruBK/index.dart';
import 'package:cakapp/WaliKelas/index.dart';
import 'package:cakapp/DataSiswa/index.dart';
import 'package:cakapp/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  void showAlertDialog() {
    showDialog(
        builder: (context) => new AlertDialog(
              title: Text("Konfirmasi"),
              content: Text("Anda yakin ingin keluar?"),
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                IconButton(
                    icon: Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      FirebaseAuth auth = FirebaseAuth.instance;
                      auth.signOut().then((res) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      });
                    }),
              ],
            ),
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/eevee.png'),
                radius: 40,
              ),
              accountName: Text("Rahman"),
              accountEmail: Text("3103119190@student.smktelkom-pwt.sch.id")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text('Pengumuman'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => pengumuman()));
            },
          ),
          ListTile(
            leading: Icon(Icons.rule_sharp),
            title: Text('Tata Tertib'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => tata_tertib()));
            },
          ),
          ListTile(
            leading: Icon(Icons.control_point),
            title: Text('Poin Siswa'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => poin_siswa()));
            },
          ),
          ListTile(
            leading: Icon(Icons.score),
            title: Text('Nilai Karakter'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => nilai_karakter()));
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Guru BK'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => guru_bk()));
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Walikelas'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => walikelas()));
            },
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Data Siswa'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => data_siswa()));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              showAlertDialog();
            },
          ),
        ],
      ),
    );
  }
}
