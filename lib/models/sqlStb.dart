import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Profil {
  final int id;
  final String nume;
  final String prenume;
  final String cnp;
  final String nrTel;
  final String email;



  const Profil({
    required this.id,
    required this.nume,
    required this.prenume,
    required this.cnp,
    required this.nrTel,
    required this.email,

  });

   Map<String, Object?> toMap() {
    return {
      'id': id,
      'nume': nume,
      'prenume': prenume,
      'cnp' : cnp,
      'nrTel' : nrTel,
      'email' : email,


    };
  }

    @override
    String toString() {
      return 'Profil{id: $id, nume: $nume, prenume: $prenume, cnp: $cnp, nrTel: $nrTel, email: $email}';
    }

    
    
}

Future<void> insertProfil(Profil profil, database) async {
      // Get a reference to the database.
      final db = await database;
      await db.insert(
        'profile1',
        profil.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Profil>> profileCitire(database) async {
  final db = await database;

  final List<Map<String, Object?>> profilMaps = await db.query('profile1');

  return [
    for (final {
          'id': id as int,
          'nume': nume as String,
          'prenume': prenume as String,
          'cnp': cnp as String,
          'nrTel': nrTel as String,
          'email': email as String,

        } in profilMaps)
      Profil(id: id, nume: nume, prenume: prenume, cnp: cnp, nrTel: nrTel, email:email),
  ];
}







void createDataBase () async {
  final database = openDatabase(


  join(await getDatabasesPath(), 'profil.db'),



    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE Profil(id INTEGER PRIMARY KEY, nume TEXT, prenume TEXT, cnp TEXT, nrTel TEXT, email TEXT)',

    );
  },
  version: 1,

  );
}

