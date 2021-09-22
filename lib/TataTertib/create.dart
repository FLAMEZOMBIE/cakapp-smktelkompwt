import 'package:cakapp/TataTertib/index.dart';
import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class tata_tertib_create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Tata Tertib"),
        ),
        drawer: NavBar(),
        body: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget> [
              new TextField(
                maxLines: 3,
                decoration: new InputDecoration(
                    hintText: "Indikator",
                    labelText: "Indikator",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Poin",
                    labelText: "Poin",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                decoration: new InputDecoration(
                    hintText: "Aspek",
                    labelText: "Aspek",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(20.0)
                    )
                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 50.0),),
              new MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => tata_tertib() ));
                }, child: Text("Save"),
                color: Colors.red,
                textColor: Colors.white,
              ),
            ],
          ),
        )

    );
  }
}
