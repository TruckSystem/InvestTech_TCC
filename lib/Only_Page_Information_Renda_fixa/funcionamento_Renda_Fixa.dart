import 'package:app_noticias/Pages_Information/Renda_fixa.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class funcionamento_Renda_Fixa extends StatefulWidget {


  @override
  State<funcionamento_Renda_Fixa> createState() => _funcionamento_Renda_FixaState();
}

class _funcionamento_Renda_FixaState extends State<funcionamento_Renda_Fixa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => renda_Fixa()
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
                  Container(

                    child: Row(

                      children: [
                        Text(
                          "Invest", style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 27),
                        ),
                        Text("Tech",
                          style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w600, fontSize: 27),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(20.0)), //this right here
                              child: Container(
                                height: 350,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Container(height: 200,
                                          child: Image.asset('images/duvida.png')),
                                      SizedBox(height: 30,),
                                      Text('Dúvidas sobre como funciona a renda fixa?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20, right: 20),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(
                                                    builder: (context) => entrarContato(),
                                                  ));
                                                },
                                                child: Text(
                                                  "Fale conosco",
                                                  style: TextStyle(color: Colors.white),), color: const Color(0xFF48AF02),
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            SizedBox(
                                              width: 120,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(
                                                    builder: (context) => funcionamento_Renda_Fixa(),
                                                  ));
                                                },
                                                child: Text(
                                                  "Fechar", style: TextStyle(color: Colors.white),
                                                ), color: const Color(0xFFB90505),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                        height: 28, width: 30,
                        child: Image.asset('images/duvida.png')
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("images/funcionamento_Renda_fixa.jpg"
                      )
                  ),
                  //  color: Color(0xEB37D93F),
                ),

              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                elevation: 5,
                child: Container(width: 500, height: 22,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 3,),
                  child: Text(' Como funciona a renda fixa?',  textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                    ),),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Investir em Renda Fixa significa na prática emprestar seu dinheiro para essas instituições financeiras e bancos. Onde, as mesmas utilizam o dinheiro para financiar suas atividades, em troca devolvem o dinheiro acrescido de uma taxa de juros. As condições dessa transação – como prazos, taxas, índices de referência e detalhes quanto à negociação dos papéis – são acertadas desde o início.'
                    , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
                ),
              ),
            ),
            SizedBox(height: 8,),
          ],
        ),

      ),

    );
  }
}
