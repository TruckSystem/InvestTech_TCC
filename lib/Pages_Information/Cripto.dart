import 'package:app_noticias/Only_Page_Infomation_Cripto/Cripto_como_investir.dart';
import 'package:app_noticias/Only_Page_Infomation_Cripto/Cripto_definicao.dart';
import 'package:app_noticias/Only_Page_Infomation_Cripto/Cripto_funcionamento.dart';
import 'package:app_noticias/Only_Page_Infomation_Cripto/Cripto_riscos.dart';
import 'package:app_noticias/Only_Page_Infomation_Cripto/Cripto_top.dart';
import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cripto extends StatefulWidget {

  @override
  State<cripto> createState() => _criptoState();
}

class _criptoState extends State<cripto> {
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
                      image: AssetImage("images/criptonew.png")
                  ),
                  //  color: Color(0xEB37D93F)
              ),

            ),
            SizedBox(height: 15,),

            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => cripto_definicao()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' O que é uma criptomoeda?',  textAlign: TextAlign.left,
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
            /*
            * SizedBox(height: 2,),

            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => cripto_Top()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' TOP 5 principais criptomoedas o mercado',  textAlign: TextAlign.left,
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
            *
            * */

            SizedBox(height: 2,),
            Container( height: 45,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: InkWell(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => cripto_Funcionamento()
                              ));
                        },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Como funciona a criptomoeda?',  textAlign: TextAlign.left,
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
                        builder: (context) => cripto_Riscos()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Quais são os riscos das criptomoedas?',  textAlign: TextAlign.left,
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
                        builder: (context) => Cripto_como_investir()
                    ));
                  },
                  child: Card( elevation: 3,
                    child: Row(
                      children: [
                        Container(width: 340,
                          child: Text(' Como investir em criptomoedas?',  textAlign: TextAlign.left,
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
