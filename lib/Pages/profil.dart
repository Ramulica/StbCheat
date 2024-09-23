import 'package:flutter/material.dart';

import 'package:cheatstb/widgets/Drawer.dart';
import 'package:cheatstb/models/sqlStb.dart';
import 'package:cheatstb/models/globasl.dart' as globals;

class ProfilPage extends StatefulWidget {
  final database;
  const ProfilPage(this.database, {super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {


  var emailControler = TextEditingController(text: globals.email);
  var numeControler = TextEditingController(text: globals.nume);
  var prenumeControler = TextEditingController(text: globals.prenume);
  var cnpControler = TextEditingController(text: globals.cnp);
  var nrTelControler = TextEditingController(text: globals.nrTel);


  @override
  Widget  build(BuildContext context) {
    
    final database = widget.database;


    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 67, 166, 50),
          foregroundColor: Colors.white,
          title: const Text('Pagina de profil'),
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
    body: SingleChildScrollView(
      child: Column(
        children: [
      
      
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: TextFormField(
                  controller: emailControler,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                     labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    border: UnderlineInputBorder(),
                    labelText: "EMAIL",
                  ),
                ),
          ),
        ),
      
      
      Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: TextFormField(
                  controller: nrTelControler,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                     labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    border: UnderlineInputBorder(),
                    labelText: "NUMĂR TELEFON",
                  ),
                ),
          ),
        ),
      
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: TextFormField(
                  controller: prenumeControler,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    border: UnderlineInputBorder(),
                    labelText: "PRENUME",
                  ),
                ),
          ),
        ),
      
      
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: TextFormField(
                  controller: numeControler,

                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                     labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    border: UnderlineInputBorder(),
                    labelText: "NUME DE FAMILIE",
                  ),
                ),
          ),
        ),
      

        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          elevation: 20,
          
          child: TextFormField(
                  controller: cnpControler,

                  cursorColor: const Color.fromARGB(255, 21, 122, 4),
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                    fillColor: Color.fromARGB(255, 21, 122, 4),
                    filled: true,
                     labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black
                    ),
                    border: UnderlineInputBorder(),
                    labelText: "CNP",
                  ),
                ),
          
        ),
      

       Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: TextFormField(
                  initialValue: "Elev",
                  cursorColor: const Color.fromARGB(255, 67, 166, 50),
                  decoration: const InputDecoration(
                     labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                    labelText: "TIP UTILIZATOR",
                  ),
                ),
          ),
        ),


        Card(
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    
                    child: const Text("LIMBA",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    ),
                    const Spacer(),
                    SizedBox(width: 30, child:  Image.asset("Images/Romania_steag.png"), ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 30, 0),
                      child: const  Text("ROMÂNĂ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                    ),
                  ],
                ),
                const Divider(
                        
                        color: Colors.black,
                        indent: 10,
                      ),
              ],
              
            ),
          ),
        ),

        Container(
          padding: const EdgeInsets.fromLTRB(40, 25, 40, 30),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                backgroundColor: const Color.fromARGB(255, 67, 166, 50),
                foregroundColor:  Colors.white,
              ),

              onPressed: () async {
                Profil profil = Profil(
                          id: 1, 
                          nume: numeControler.text, 
                          prenume: prenumeControler.text, 
                          cnp: cnpControler.text, 
                          nrTel: nrTelControler.text, 
                          email: emailControler.text);


                        insertProfil(profil, database);
                        Profil profil1 = (await profileCitire(database))[0] ;
                setState(() {


                    emailControler = TextEditingController(text: profil1.email);
                    numeControler = TextEditingController(text: profil1.nume);
                    prenumeControler = TextEditingController(text: profil1.prenume);
                    cnpControler = TextEditingController(text: profil1.cnp);
                    nrTelControler = TextEditingController(text: profil1.nrTel);

                    globals.email = profil1.email;
                    globals.nume = profil1.nume;
                    globals.prenume = profil1.prenume;
                    globals.cnp = profil1.cnp;
                    globals.nrTel = profil1.nrTel;



                });

              }, 
              
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.save),
                Text("ACTUALIZEAZĂ CONTUL",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            )),
        ),
      
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 67, 166, 50),
                  decoration: const InputDecoration(
                     labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                    labelText: "PAROLA ACTUALĂ",
                  ),
                ),
          ),
        ),

               Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 67, 166, 50),
                  decoration: const InputDecoration(
                     labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                    labelText: "PAROLA NOUĂ",
                  ),
                ),
          ),
        ),

               Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 20,
          
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 67, 166, 50),
                  decoration: const InputDecoration(
                     labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    
                    color: Color.fromARGB(255, 67, 166, 50),
                  )),
                    labelText: "CONFIRMĂ PAROLA NOUĂ",
                  ),
                ),
          ),
        ),

                Container(
          padding: const EdgeInsets.fromLTRB(40, 25, 40, 30),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                backgroundColor: const Color.fromARGB(255, 67, 166, 50),
                foregroundColor:  Colors.white,
              ),
              onPressed: () async {

                print((await profileCitire(database))[0]);

              }, 
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.save),
                Text("SCHIMBĂ PAROLA",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            )),
        ),

          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: const Text("Ştergerea contului se poate finaliza doar în cazul în care nu aveți deja achiziționat un abonament valabil. După expirarea perioadei de valabilitate contul poate fi şters. Ştergerea contului, în timpul perioadei de valabilitate a abonamentului se poate realiza printr-o solicitare transmisă pe email (secţiunea Serviciu Clienți).")),

          Container(
          padding: const EdgeInsets.fromLTRB(40, 25, 40, 30),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                backgroundColor:  Colors.red,
                foregroundColor:  Colors.white,
              ),
              onPressed: () {}, 
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.delete),
                Text("STERGE CONTUL",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),),
              ],
            )),
        ),



        ],
      ),
    ),
    );
  }
}
