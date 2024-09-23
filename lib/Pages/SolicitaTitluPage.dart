import 'package:flutter/material.dart';

import 'package:cheatstb/widgets/Drawer.dart';
import 'package:cheatstb/models/globasl.dart' as globals;


class SolicitaTarifPAge extends StatelessWidget {
  final database;
  
  int year = globals.date.year;
  int year2 = globals.date.year+1;

  SolicitaTarifPAge(this.database, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 67, 166, 50),
          foregroundColor: Colors.white,
          title: const Text('Solicită titlu tarifar'),
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
      
      ), 
      drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.9,
          child: DrawerS(database) 
    ),
    body: Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              backgroundColor: const Color.fromARGB(255, 67, 166, 50),
              foregroundColor:  Colors.white,
            ),
            onPressed: () {}, 
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.label),
              Text(" ALEGE ALT TITLU TARIFAR",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),),
            ],
          )),
        ),

        Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          width: double.infinity,
          child:  Card(
            elevation: 10,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Text("Aboneament elev an scolar $year-$year2\nGrup:Metropolitan\nPerioadă de valabilitate de la momentul\nachizitionarii: 1 Anul scolar $year-$year2\nPreț întreg: 960 RON\nReducere aplicată: 100%",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              )),),
        ),
         Container(
          padding: const EdgeInsets.fromLTRB(5, 25, 5, 0),
           child: Card(
            elevation: 8,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: const Row(
                    children: [
                      Icon(Icons.credit_card, size: 16,),
                      Text(" Preț final",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(25, 10, 20, 20),
                  child: const Text("0.00 RON", 
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),))
              ],
            ),
                   ),
         ),
         const Spacer(),
         Container(
        padding: const EdgeInsets.fromLTRB(3, 0, 3, 5),
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              backgroundColor: const Color.fromARGB(255, 67, 166, 50),
              foregroundColor:  Colors.white,
            ),
            onPressed: () {}, 
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.shopping_cart, size: 18,),
              Text(" CUMPĂRĂ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),
            ],
          )),
      ),
      
      
      
      ],
    ),
    );
  }
}







