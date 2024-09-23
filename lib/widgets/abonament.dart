import 'package:flutter/material.dart';
import 'package:cheatstb/models/globasl.dart' as globals;

class Abonament extends StatelessWidget {
  const Abonament({super.key});

  @override
  Widget build(BuildContext context) {
    int year = globals.date.year;
    int year2 = globals.date.year+1;


    return  Container(
      color: const Color.fromARGB(255, 21, 122, 4),
      child:  Container(
        
       color: const Color.fromARGB(255, 21, 122, 4),
        padding:const EdgeInsets.all(5),
        child: Card(
          child: Container(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
            child: Column(
              children: [
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("1.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color:  Color.fromARGB(255, 21, 122, 4),
                    ),),
                    const Icon(Icons.label, color:  Color.fromARGB(255, 21, 122, 4),),
                    Text("Abonament elev an scolar $year -",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color:  Color.fromARGB(255, 21, 122, 4),
                    ),)
                    
                  ],
                ),
                SizedBox(
                  width:double.infinity,
                  child: Text("$year2",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 21, 122, 4),
                    ),),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  width: double.infinity,
                  child: const Text("Grup Metropolitan",
                  style: TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child:  Row(
                    children: [
                      const Text("Expira la: ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),),
                      Text("31-08-$year2 23:59",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),)
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: const Row(
                    children: [
                      Text("Cod titlu tarifar: ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),),
                      Text("17267564000003",
                  style: TextStyle(
                    color: Color.fromARGB(255, 110, 110, 110),
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),)
                      
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(100, 10, 100, 30),
                  child: Image.asset("Images/Qrtest.png"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}