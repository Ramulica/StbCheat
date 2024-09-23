import 'package:cheatstb/Pages/TitluriTArifeActivePAge.dart';
import 'package:flutter/material.dart';
import 'package:cheatstb/Pages/Acasa_TitluTarifare.dart';
import 'package:cheatstb/Pages/SolicitaTitluPage.dart';

class AccesareRapida extends StatelessWidget {
  final database;
  const AccesareRapida(this.database, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        decoration: BoxDecoration(
    boxShadow: [
       BoxShadow(
        color: Colors.grey.withOpacity(.5),
        blurRadius: 20.0, // soften the shadow
        spreadRadius: 0.0, //extend the shadow
        offset: const Offset(
          10, // Move to right 10  horizontally
          0, // Move to bottom 10 Vertically
        ),
      )
    ],
  ),
        child: Column(
          children: [
            Container(
              
              color: Colors.white,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: const Text("Accesare rapidă", 
              style: TextStyle(
                color: Color.fromARGB(255, 19, 104, 4),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
              ),
              Container(
                color: const Color.fromARGB(255, 19, 104, 4),
                child: Column(
                  
                  children: [
                    
                    LongButtonStb2("Images/Shopping_Cart.ico", "Cumpără titlu tarifar",  SolicitaTarifPAge(database)),
                    const Divider(
                      
                      color: Colors.black,
                      indent: 70,
                    ),
                    LongButtonStb2("Images/Double_Tick.ico", "Titluri tarifar",  TitluriTArifeActivePage(database)),
                ],
                
                
                ),
              )
              
        
          ],),
      ),
    );
  }
}

class LongButtonStb2 extends StatelessWidget {
  final butonIcon;
  final String title;
  final destination;
  // final Function callback; 

  const LongButtonStb2(this.butonIcon, this.title, this.destination, {super.key});

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
        backgroundColor: const Color.fromARGB(255, 19, 104, 4),
        
        foregroundColor: const Color.fromARGB(255, 197, 205, 195),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(child: ImageIcon(AssetImage(butonIcon)),),
              const SizedBox(width: 20,),
              Text(title, style: 
                const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  ),),  
          ],),
          Container(
            
            child: const Icon(Icons.arrow_forward_rounded),),

        ],));
  }
}