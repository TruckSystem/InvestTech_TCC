import 'package:app_noticias/Only_Page_Information_Acoes/A%C3%A7oes_riscos.dart';
import 'package:app_noticias/Only_Page_Information_Acoes/Acoes_P_PV.dart';
import 'package:app_noticias/Only_Page_Information_Acoes/Acoes_como_investir.dart';
import 'package:app_noticias/Only_Page_Information_Acoes/Acoes_definicao.dart';
import 'package:app_noticias/Only_Page_Information_Acoes/Acoes_dividend_yield.dart';
import 'package:app_noticias/Only_Page_Information_Acoes/Acoes_dividendos.dart';
import 'package:app_noticias/Only_Page_Information_Acoes/Acoes_tipos.dart';
import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class acoes_info extends StatefulWidget {


  @override
  State<acoes_info> createState() => _acoes_infoState();
}

class _acoes_infoState extends State<acoes_info> {
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
                      image: AssetImage("images/acoes.png")
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
                        builder: (context) => acoes_Definicao()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' O que é uma ação?',  textAlign: TextAlign.left,
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
                        builder: (context) => acoes_Tipos()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Quais são as categorias de ações?',  textAlign: TextAlign.left,
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
                        builder: (context) => acoes_Dividendos()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Como as ações pagam dividendos?',  textAlign: TextAlign.left,
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
                        builder: (context) => acoes_Riscos()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Quais são os riscos das ações?',  textAlign: TextAlign.left,
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


            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => acoes_Dividend_yield()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' O que é dividend yield de uma ação?',  textAlign: TextAlign.left,
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

            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => acoes_P_PV()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' O que é P/VP de uma ação?',  textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                            ),),
                        ),

                        Container(width: 15,child: Icon(Icons.double_arrow_outlined, color: Colors.blueAccent, size: 25.0,)),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => acoes_Como_investir()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Como investir em ações?',  textAlign: TextAlign.left,
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
