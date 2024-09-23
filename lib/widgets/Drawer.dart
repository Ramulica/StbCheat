import 'package:flutter/material.dart';

import 'package:cheatstb/main.dart';
import 'package:cheatstb/Pages/TitluriTArifeActivePAge.dart';
import 'package:cheatstb/Pages/SolicitaTitluPage.dart';
import 'package:cheatstb/Pages/profil.dart';
import 'package:cheatstb/models/globasl.dart' as globals;
import 'package:cheatstb/models/sqlStb.dart';

class DrawerS extends StatelessWidget {
  final database;
  DrawerS(this.database, {super.key});

  final bool _customTileExpanded1 = false;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.fromLTRB(120, 20, 120, 10),
            child: Image.asset('Images/StbSquareLogo.png')),
            LongButtonStb("Images/Home_Page.ico", "Acasa",  mainBody(database)),
            LongButtonStb("Images/Tags_b.ico", "Titluri Tarife", TitluriTArifeActivePage(database)),
            LongButtonStb("Images/Shopping_Cart_b.ico", "Solicita titlu tarifar",  SolicitaTarifPAge(database)),
      
             ExpansionTile(
              trailing:  const Icon(Icons.arrow_right_rounded, size: 36, color: Colors.black,),
              
      
              expansionAnimationStyle: AnimationStyle(duration: const Duration(seconds: 0)),
              title: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: const Row(children: [
                  Icon(Icons.history_outlined, color: Colors.black,),
                  SizedBox(width: 20,),
                  Text("Istoric",
                  
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14
                  ),)
                ],),
              ),
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                  child: const  Row(children: [
                  Icon(Icons.payments_sharp, color: Colors.black, size: 16,),
                  SizedBox(width: 30,),
                  Text("Tranzacții",
                  
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14))
                              ],),
                ),
      
                Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                  child: const Row(children: [
                  Icon(Icons.check_box_rounded, color: Colors.black, size: 16,),
                  SizedBox(width: 30,),
                  Text("Activări", 
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14
                  ),
                  )
                              ],),
                ),
      
              ],),
      
              
            LongButtonStbProfil("Images/User_b.ico", "Profil",  ProfilPage(database), database),
      
            ExpansionTile(
              iconColor: Colors.black,
              trailing:  const Icon(Icons.arrow_right_rounded, size: 36, color: Colors.black,),
              
      
              expansionAnimationStyle: AnimationStyle(duration: const Duration(seconds: 0)),
              title: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: const Row(children: [
                  ImageIcon(AssetImage("Images/News.png"), size: 18),

                  SizedBox(width: 20,),
                  Text("Informații utile",
                  
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14
                  ),)
                ],),
              ),
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                  child: const  Row(children: [
      
                  Icon(Icons.question_mark, color: Colors.black, size: 14,),
                  SizedBox(width: 30,),
                  Text("Înbtrebări fregvente",
                  
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14))
                              ],),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                  child: const  Row(children: [
      
                  Icon(Icons.info_outline, color: Colors.black, size: 16,),
                  SizedBox(width: 30,),
                  Text("Termeni si condiții",
                  
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14))
                              ],),
                ),
               
                Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                  child: const  Row(children: [
      
                  Icon(Icons.integration_instructions, color: Colors.black, size: 16,),
                  SizedBox(width: 30,),
                  Text("Mod de utilizare",
                  
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14))
                              ],),
                ),
                 Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                  child: const  Row(children: [
      
                  Icon(Icons.call, color: Colors.black, size: 16,),
                  SizedBox(width: 30,),
                  Text("Serviciu Clienți",
                  
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14))
                              ],),
                ),
      
      
                Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                  child: const Row(children: [
                  Icon(Icons.directions_transit, color: Colors.black, size: 16,),
                  SizedBox(width: 30,),
                  Text("Informați generale", 
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14
                  ),
                  )
                              ],),
                ),
      
              ],),
              
      
      
      
      
      
            LongButtonStb("Images/Logout.ico", "Deconectare", mainBody(database)),
        ],),
    );
  }
}



class LongButtonStb extends StatelessWidget {
  final butonIcon;
  String title;
  final destination;
  // final Function callback; 

  LongButtonStb(this.butonIcon, this.title, this.destination, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: (){
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
      }, 
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      child: Row(
        children: [
          ImageIcon(AssetImage(butonIcon), size: 20,),
          const SizedBox(width: 20,),
          Text(title,
          style: const TextStyle(
              fontWeight: FontWeight.w400
          ),),
        ],));
  }
}

class LongButtonStbProfil extends StatelessWidget {
  final butonIcon;
  String title;
  final destination;
  final database;
  // final Function callback; 

  LongButtonStbProfil(this.butonIcon, this.title, this.destination, this.database, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: () async {
                  Profil profil = (await profileCitire(database))[0] ;

                    globals.email = profil.email;
                    globals.nume = profil.nume;
                    globals.prenume = profil.prenume;
                    globals.cnp = profil.cnp;
                    globals.nrTel = profil.nrTel;
         Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
      }, 
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      child: Row(
        children: [
          const ImageIcon(AssetImage("Images/User_b.ico"), size: 24,),
          const SizedBox(width: 20,),
          Text(title, style: const TextStyle(fontWeight: FontWeight.w400),),
        ],));
  }
}