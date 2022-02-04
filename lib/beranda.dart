import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cakapp/walas.dart';
import 'package:cakapp/siswa.dart';
import 'package:cakapp/GuruBK/index.dart';

class HomeSiswa extends StatefulWidget {
  const HomeSiswa({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  _HomeSiswaState createState() => _HomeSiswaState();
}

class _HomeSiswaState extends State<HomeSiswa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection('users')
              .doc(widget.user.uid)
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              return checkRole(snapshot.data!);
            }
            return LinearProgressIndicator();
          },
        ),
      ),
    );
  }

  Center checkRole(DocumentSnapshot snapshot) {
    if (snapshot.data == null) {
      return Center(
        child: Text('no data set in the userId document in firestore'),
      );
    }
    if (snapshot.get('role') == 'bk') {
      return BK(snapshot);
    } else if (snapshot.get('role') == 'guru') {
      return Guru(snapshot);
    }
    return Center(child: Siswa());
  }

  BK(DocumentSnapshot snapshot) {
    return Center(child: guru_bk());
    // child:Text('${snapshot.get('role')} ${snapshot.get('nama')}')
  }

  Guru(DocumentSnapshot snapshot) {
    return Center(child: Walas());
    // child: Text(snapshot.get('role'))
  }
}
