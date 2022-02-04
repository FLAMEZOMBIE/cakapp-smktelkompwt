import 'package:cakapp/TataTertib/create.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class tata_tertib extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tata Tertib"),
      ),
      drawer: NavBar(),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Text("DATA INDIKATOR"),
          ),
          new MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => tata_tertib_create() ));
            }, child: Text("New Indikator"),
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
          )
        ]),
      ),
    );
  }
}