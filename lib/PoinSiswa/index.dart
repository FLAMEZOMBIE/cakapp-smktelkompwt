import 'package:cakapp/PoinSiswa/create.dart';
import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class poin_siswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poin Siswa"),
      ),
      drawer: NavBar(),
      body: Column (
        children: <Widget> [
          Container(
            child : ListTile(
              title: Text("PEROLEHAN POINT",
                textAlign: TextAlign.center,),
            ),
          ),
          Container(
              margin: EdgeInsets.all(8),
              child: Table(
                border: TableBorder.all(
                  color: Colors.grey,
                  width: 1,
                ),
                columnWidths: {
                  0: FixedColumnWidth(380),

                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("Nama Siswa", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("Intan Dewi Hapsari", textAlign: TextAlign.center),
                        ),
                      ),
                    ],

                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("NIS", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("3103119092", textAlign: TextAlign.center),
                        ),
                      ),
                    ],

                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("Kelas", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("XII RPL 3", textAlign: TextAlign.center),
                        ),
                      ),
                    ],

                  )
                ],
              )
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 30,
            endIndent: 30,
          ),
          new MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => add_poin() ));
            }, child: Text("Add"),
            color: Colors.red,
            textColor: Colors.white,
          ),
          Container(
              margin: EdgeInsets.all(8),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(100.0),
                border: TableBorder.all(
                  color: Colors.black,
                  width: 1,
                ),
                columnWidths: {
                  0: FixedColumnWidth(60),
                  1: FixedColumnWidth(100),
                  2: FixedColumnWidth(100),
                  3: FixedColumnWidth(100)

                },
                children: [
                  TableRow(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                      ),
                      children: [
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.all(19),
                            child: Text("No"),),
                        ),
                        TableCell(
                            child: Padding (
                                padding: EdgeInsets.all(19),
                                child: Text("Indikator"))
                        ),
                        TableCell(
                            child: Padding (
                                padding: EdgeInsets.all(19),
                                child: Text("Poin"))
                        ),
                        TableCell(
                            child: Padding (
                                padding: EdgeInsets.all(19),
                                child: Text("Aspek"))
                        ),
                      ]),
                  TableRow(children: [
                    Column(children:[Text('1')]),
                    Column(children:[Text('Jika ada perselisihan, saya akan menyelesaikan dengan musyawarah')]),
                    Column(children:[Text('10')]),
                    Column(children:[Text('Gotong Royong')]),
                  ]),
                  TableRow(children: [
                    Column(children:[Text('2')]),
                    Column(children:[Text('Saya Belajar dari peristiwa yang terjadi')]),
                    Column(children:[Text('10')]),
                    Column(children:[Text('Kreatif')]),
                  ]),
                  TableRow(children: [
                    Column(children:[Text('3')]),
                    Column(children:[Text('Saya belajar secara teratur')]),
                    Column(children:[Text('10')]),
                    Column(children:[Text('mandiri')]),
                  ]),
                ],
              )
          ),
          // Expanded(
          //   child : ListView(
          //     children: [
          //       new ListTile(
          //         title: Text("Nama Lengkap : Muhammad Hendra Bima Saputra"),
          //       ),
          //       new ListTile(
          //         title: Text("Kelas : XII RPL 4"),
          //       ),
          //       new ListTile(
          //         title: Text("No Absen : 16"),
          //       ),
          //       new ListTile(
          //         title: Text("Sekolah : SMK Telkom Purwokerto"),
          //       ),
          //       new ListTile(
          //         title: Text("No HP : 089619184743"),
          //       ),
          //       new ListTile(
          //         title: Text("Alamat : Purwokerto"),
          //       )
          //
          //     ],
          //   ),
          // ),
        ],
      ),

    );
  }
}