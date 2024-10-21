import 'package:app_noticias/Pages_Information/Fii_info.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class risco_fiis extends StatefulWidget {


  @override
  State<risco_fiis> createState() => _risco_fiisState();
}

class _risco_fiisState extends State<risco_fiis> {
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
                          builder: (context) => fii_Info()
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
                                      Text('Dúvidas sobre os riscos dos FIIs?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
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
                                                    builder: (context) => risco_fiis(),
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

            Container(
              child: Column(
                children: [
                  Container(
                    width: 375,
                    height: 200,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("images/fi_riscos.png"
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
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
                        child: Text(' Quais são os riscos dos FIIs?',  textAlign: TextAlign.left,
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
                        child: Text(
                          'Os investidores de fundos de investimento imobiliários estão sujeitos a muitos riscos. Os mais relevantes são: 1° desvalorização do imóvel físico impactando no preço de cada cota, consequentemente desvalorizando o patrimonio investido pelo cotista. 2° risco de inadimplência, principalmente nos fundos de papel por conta de vários cenários como, por exemplo, crédito elevado, indexadores elevados e crise econômica no país.'
                          , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
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
                        child: Text(
                          '3° vacância nos imóveis, ou seja, o fundo não consegue alugar seu imóvel e acaba reduzindo os rendimentos aferidos ao cotista. 4° alguns fundos imobiliários podem ter baixa liquidez, ou seja, não há muitas pessoas comprando ou vendendo as cotas desses fundos. Isso pode dificultar a venda das suas cotas quando você quiser ou precisar.'
                          , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
                      ),
                    ),
                  ),
                ],

              ),
            )


          ],
        ),


      ),
    );
  }
}
