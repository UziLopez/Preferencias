import 'package:flutter/material.dart';
//import 'ExpansionPanelList';



class conductor extends StatelessWidget{

  bool active = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('android/assets/images/profile.jpg'),
                  ),
                ),
            ),
              ),
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
              'Mujer',
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
            Expanded(
                child: _expansionPanel(),
              )
              
           
          ],
        )
        ,)

    );
  }
  
  _expansionPanel() {
    return ListView(children: [
      ExpansionPanelList(
        expansionCallback: (index, expanded){
          print("index: ${index}");
          setState((){
            active = !active;
          });
        },
        children: <ExpansionPanel>[
          ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text('Preferencias')
            );
            },
            body: ListTile(
              title: Text('Genero a quien se le va a dar raite'),
              subtitle: Text('Hombre-Mujer'),
              ),
              isExpanded: active
              )
        ],
      )
    ],);


  }
  
  void setState(Null Function() param0) {}
}