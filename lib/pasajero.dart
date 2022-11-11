import 'package:flutter/material.dart';

class pasajero extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            /*
            Image.network(
              "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
            ),*/
            SizedBox(
              child: Text(
              'Nombre',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(
              child: Text(
              'Ana Uzi Lopez Ponce',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.grey),
              )
            ),
             SizedBox(
              child: Text(
              'Genero',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              )
            ),
            SizedBox(
              child: Text(
              'Fluido',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.grey),
              )
            ),
            SizedBox(
              child: Text(
              'Campus',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              )
            ),
            SizedBox(
              child: Text(
              'FIAD',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.grey),
              )
            ),
            SizedBox(
              child: Text(
              'Rol',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              )
            ),
            SizedBox(
              child: Text(
              'Pasajero-Conductor',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.grey),
              )
            ),
            SizedBox(
              child: Text(
              'Matricula',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
              )
            ),
            SizedBox(
              child: Text(
              '00358743',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.grey),
              )
            ),

          ],
        )
        ,)

    );
  }
}