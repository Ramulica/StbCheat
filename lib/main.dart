import 'package:flutter/material.dart';


import './Pages/Acasa_acasa.dart';
import './Pages/Acasa_TitluTarifare.dart';
import './widgets/Drawer.dart';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:cheatstb/models/sqlStb.dart';
import 'package:cheatstb/models/globasl.dart' as globals;


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final database = openDatabase(
    join(await getDatabasesPath(), 'ProfileStb1.db'),
    onCreate: (db, version) {

      return db.execute(
        'CREATE TABLE profile1(id INTEGER PRIMARY KEY, nume TEXT, prenume TEXT, cnp TEXT, nrTel TEXT, email TEXT)',
      );
    },
    
    version: 1,
  );
  DateTime now =  DateTime.now();
  globals.date =  DateTime(now.year, now.month, now.day, now.hour, now.minute, now.second);

  Profil profil = (await profileCitire(database))[0] ;

                    globals.email = profil.email;
                    globals.nume = profil.nume;
                    globals.prenume = profil.prenume;
                    globals.cnp = profil.cnp;
                    globals.nrTel = profil.nrTel;
  runApp(MyApp(database));
  }

class MyApp extends StatelessWidget {
  final dataBase; 
  const MyApp(this.dataBase, {super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home : mainBody(dataBase)
      );
    
  }
}


class mainBody extends StatelessWidget {
  final database;
  const mainBody(this.database, {super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 153, 51),
          foregroundColor: Colors.white,
          title: const Text('Acasă'),
          leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 0, 79, 26),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            padding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            dividerHeight: 0,
            tabs: <Widget>[
              Tab(
                
                text: 'Acasă',
                icon: ImageIcon(AssetImage("Images/Home_Page.ico"), size: 28,),
              ),
              Tab(
                text: "Titluri tarifare",
                icon: ImageIcon(AssetImage("Images/Tags.ico")),
              ),
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Center(
              child:  AcasaAcasa(database),
            ),
            Center(
              child: TitluTarife(database),
            ),
          ],
        ),
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.9,
          child: DrawerS(database) // Populate the Drawer in the next step.
        ),
      ),
    );
  }
}

