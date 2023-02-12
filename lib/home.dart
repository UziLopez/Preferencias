import 'package:flutter/material.dart';
import 'pasajero.dart';
import 'conductor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        title: Text('Preferencias',
        style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)
        )),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
      drawer:  Drawer(
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 10, 161, 7),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 20,
              offset: Offset(0,10)
            )
          ],
          borderRadius: BorderRadius.circular(20)
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: GNav(tabBackgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            tabs: [
            GButton(
              icon: Icons.home,
              text:'Inicio',
              //iconActiveColor: Colors.white,
              //textColor: Colors.white,
            ),
            GButton(
              icon: Icons.article_outlined,
              text:'Historial',
              //iconActiveColor: Colors.white,
              //textColor: Colors.white,
            ),
            GButton(
              icon: Icons.person,
              text:'Perfil',
              //iconActiveColor: Colors.white,
              //textColor: Colors.white,
            ),
            ]),
          ),
        ),
      ),
    );
  }
}