import 'package:flutter/material.dart';
import 'package:cheatstb/Pages/TitluriTArifeActivePAge.dart';
import 'package:cheatstb/models/globasl.dart' as globals;

class NumeAcasa extends StatelessWidget {
  final database;
  String numeProfil;
  NumeAcasa(this.numeProfil, this.database, {super.key});

  int day = globals.date.day;
  String month = (globals.date.month).toString().padLeft(2, '0');
  int year = globals.date.year;
  String hour = globals.date.hour.toString().padLeft(2, '0');
  String minut = globals.date.minute.toString().padLeft(2, '0');
  String secunda = globals.date.second.toString().padLeft(2, '0');


  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Column(
        
        children: [
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 67, 166, 50),
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 24,
                    child: Image.asset("Images/User.png"),
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    numeProfil, 
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      ),),
                ],
              ),
            )),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 10,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child:   Text("Ultima sincroniazre: $day-$month-$year $hour:$minut:$secunda" , style: const TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      fontSize: 12 ,
                    ),),),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                    child:  Row(children: [
                      
                         SizedBox(
                          width: 18,
                          child: Image.asset("Images/Price_Tag.png"),
                        ),
                       const Text(" Status titluri tarife", 
                       style:  TextStyle(
                          color:  Color.fromARGB(255, 19, 104, 4),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),)

                  ],),),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 20, 15),
                    child: InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TitluriTArifeActivePage(database)),
                        );
                      },
                      child: const Row(
                        children: [
                          Text("1", 
                          style: TextStyle(
                            color: Color.fromARGB(255, 8, 218, 87),
                          ),),
                          SizedBox(width: 5,),
                          Text("titluri tarifare active", style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 113, 113, 133)
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward, 
                          color: Color.fromARGB(255, 67, 166, 50),
                          size: 14,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}