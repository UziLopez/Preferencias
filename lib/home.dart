import 'package:flutter/material.dart';
import 'pasajero.dart';
import 'conductor.dart';

class Home extends StatefulWidget{
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  int selectedPage =0;
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2,initialIndex: selectedPage, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('PERFIL'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('opcion1'),
              onTap: (){

              },
            ),
            ListTile(
              title: Text('opcion2'),
              onTap: (){

              },
            )
            ],
        ),
        ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Colors.greenAccent)
              )
            ),
            child: Material(
              color: Colors.white,
              child: TabBar(
                controller: controller,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs:[
                  Tab(child: Container(child:Text('Pasajero')),),
                  Tab(child: Container(child:Text('Conductor')),),
                ]
              ),
          )
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                pasajero(),
                conductor()
              ],
            ),
          )
        ],
      ),
    );
  }
}