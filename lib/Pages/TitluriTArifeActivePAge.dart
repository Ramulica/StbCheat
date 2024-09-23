import 'package:flutter/material.dart';

import 'package:cheatstb/widgets/Drawer.dart';
import 'package:cheatstb/Pages/Acasa_TitluTarifare.dart';




class TitluriTArifeActivePage extends StatelessWidget {
  final database;
  const TitluriTArifeActivePage(this.database, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 153, 51),
          foregroundColor: Colors.white,
          title: const Text('Titluri tarifare active'),
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
    body: TitluTarife(database),
    );
  }
}
