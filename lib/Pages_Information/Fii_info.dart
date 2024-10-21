import 'package:app_noticias/Only_Page_Information_FII/como_Investir.dart';
import 'package:app_noticias/Only_Page_Information_FII/definicao_Fii.dart';
import 'package:app_noticias/Only_Page_Information_FII/dividend_yield.dart';
import 'package:app_noticias/Only_Page_Information_FII/dividendos.dart';
import 'package:app_noticias/Only_Page_Information_FII/fi_riscos.dart';
import 'package:app_noticias/Only_Page_Information_FII/p_pv_fI.dart';
import 'package:app_noticias/Only_Page_Information_FII/rendimentos_FII.dart';
import 'package:app_noticias/Only_Page_Information_FII/tipos_Fiis.dart';
import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fii_Info extends StatefulWidget {


  @override
  State<fii_Info> createState() => _fii_InfoState();
}

class _fii_InfoState extends State<fii_Info> {
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
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(top:0, left: 15, right: 15, bottom: 1),
              height:170 ,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Fiinew250.png")
                ),
              ),

            ),
            SizedBox(height: 15,),

            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => definicao_Fii()
                    ));


                  },

                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' O que é um fundo imobiliário ou FIIs?',  textAlign: TextAlign.left,
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
                        builder: (context) => tipos_FIIs()
                    ));


                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Quais são os tipos de FIIs?',  textAlign: TextAlign.left,
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
                        builder: (context) => dividendos()
                    ));


                  },

                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Como funcionam os dividendos nos FIIs?',  textAlign: TextAlign.left,
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
                        builder: (context) => dividend_yield()
                    ));


                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' O que significa o dividend yield dos FIIs?',  textAlign: TextAlign.left,
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

                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => p_PV_FI()
                          ));
                        },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' O que é o P/VP de um FII?',  textAlign: TextAlign.left,
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
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => rendimentos_FII()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(
                          width: 340,
                          child: Text(' Como um FII pode distribuir proventos?',  textAlign: TextAlign.left,
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
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => risco_fiis()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Quais são os riscos dos FIIs?',  textAlign: TextAlign.left,
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
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => como_Investir()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Como investir em FIIs?',  textAlign: TextAlign.left,
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
