import 'package:flutter/material.dart';

import "package:cheatstb/widgets/accesare_rapida.dart";
import "package:cheatstb/widgets/NumeAcasa.dart";
import 'package:cheatstb/models/globasl.dart' as globals;

class AcasaAcasa extends StatelessWidget {
  final database;
  AcasaAcasa(this.database, {super.key});
  final String nume = globals.nume;
  final String prenume = globals.prenume;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:  const EdgeInsets.fromLTRB(20, 10, 20, 0),
          child: Image.asset('Images/Stblogo.png')),
          NumeAcasa("$prenume $nume", database),
          AccesareRapida(database)
      ],
    );
  }
}


