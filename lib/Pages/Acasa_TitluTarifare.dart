import 'package:flutter/material.dart';
import 'package:cheatstb/Pages/SolicitaTitluPage.dart';
import "package:cheatstb/widgets/abonament.dart";

class TitluTarife extends StatelessWidget {
  final database;
  const TitluTarife(this.database, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Column(
        children: [
          Abonament()
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        shape: const CircleBorder(),
        backgroundColor: const Color.fromARGB(255, 21, 122, 4),
        onPressed: (){
          
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  SolicitaTarifPAge(database)),
          );
      
        },
        child: const Icon(Icons.shopping_cart, color: Colors.white,),
        ),
    );
  }
}