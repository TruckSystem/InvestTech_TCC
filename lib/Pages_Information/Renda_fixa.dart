import 'package:app_noticias/Only_Page_Information_Renda_fixa/definicao_Renda_fixa.dart';
import 'package:app_noticias/Only_Page_Information_Renda_fixa/funcionamento_Renda_Fixa.dart';
import 'package:app_noticias/Only_Page_Information_Renda_fixa/investir_Renda_Fixa.dart';
import 'package:app_noticias/Only_Page_Information_Renda_fixa/riscos_Renda_fixa.dart';
import 'package:app_noticias/Only_Page_Information_Renda_fixa/titulos_renda_Fixa.dart';
import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class renda_Fixa extends StatefulWidget {


  @override
  State<renda_Fixa> createState() => _renda_FixaState();
}

class _renda_FixaState extends State<renda_Fixa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 100),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => newHome_page()
                      ));
                    },
                    child: Card(
                        elevation: 4,
                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.black, width: 0.1,
                          ),
                        ),
                        child: Icon(Icons.arrow_back, size: 30,)
                    ),
                  ),
                  SizedBox(width: 90,),
                  Text(
                    "Invest", style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 27),
                  ),
                  Text("Tech",
                    style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w600, fontSize: 27),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:0, left: 15, right: 15, bottom: 1),
              height:170 ,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/Renda_fixa.png")
                  ),
                  //  color: Color(0xEB37D93F),
              ),

            ),
            SizedBox(height: 15,),
            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => definicao_Renda_fixa()
                    ));


                  },

                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' O que é renda fixa?',  textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold,
                            ),),
                        ),

                        Container(width: 15,
                            child: Icon(Icons.double_arrow_outlined, color: Colors.blueAccent, size: 25.0,)),
                      ],
                    ),
                  ),
                ),
              ),
            ),


            SizedBox(height: 2,),

            Container( height: 45,
              child: Padding(
                    padding: const EdgeInsets.only(right: 5, left: 5),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => titulos_renda_Fixa()
                        ));


                      },
                      child: Card( elevation: 3,
                        child: Row(
                          children: [
                            Container(width: 340,
                              child: Text(' Quais são os títulos de renda fixa?',  textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                                ),),
                            ),

                            Container(width: 15,
                                child: Icon(Icons.double_arrow_outlined, color: Colors.blueAccent, size: 25.0,)),
                          ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 2,),
            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => funcionamento_Renda_Fixa()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Como funciona a renda fixa?',  textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                            ),),
                        ),

                        Container(width: 15,
                            child: Icon(Icons.double_arrow_outlined, color: Colors.blueAccent, size: 25.0,)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2,),
            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Container(width: 340,
                  child: Card( elevation: 3,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => riscos_Renda_fixa()
                        ));
                      },
                      child: Row(
                        children: [
                          Container(width: 340,
                            child: Text(' Quais são os riscos da renda fixa?',  textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                              ),),
                          ),

                          Container(width: 15,
                              child: Icon(Icons.double_arrow_outlined, color: Colors.blueAccent, size: 25.0,)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Card( elevation: 3,
                  child: InkWell(

                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => investir_Renda_Fixa()
                      ));
                    },
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Como investir em renda fixa?',  textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                            ),),
                        ),
                        
                        Container(width: 15,
                            child: Icon(Icons.double_arrow_outlined, color: Colors.blueAccent, size: 25.0,)),
                      ],
                    ),
                  ),
                ),
              ),
            ),


          ],

        ),
      ),
    );
  }
}
