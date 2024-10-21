import 'package:app_noticias/Pages_Information/Fii_info.dart';
import 'package:app_noticias/Pages_Information/Fundo_Investimento_Imobili%C3%A1rio.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class definicao_Fii extends StatefulWidget {


  @override
  State<definicao_Fii> createState() => _definicao_FiiState();
}

class _definicao_FiiState extends State<definicao_Fii> {
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
                                      Text('Dúvidas sobre o que é um fundo imobiliário?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
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
                                                    builder: (context) => definicao_Fii(),
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
              padding: EdgeInsets.only(top:0, left: 15, right: 15, bottom: 1),
              height:170 ,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Fiinew250.png")
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
                  child: Text(' O que é um fundo imobiliário ou FIIs?',  textAlign: TextAlign.left,
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
                    'O Fundo de Investimento Imobiliário (FII) é uma comunhão de recursos destinados à aplicação em ativos relacionados ao mercado imobiliário. Cabe ao administrador, uma instituição financeira específica, constituir o fundo e realizar o processo de captação de recursos junto aos investidores através da venda de cotas. Os fundos Imobiliários, são conhecidos pela sigla (xxxx), referente ao grupo que tem o direito sobre os ativos e acompanhado pelo código 11. Os tipos/classes serão classificados e definidos em outra secção.'
                    , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
                ),
              ),
            ),
            SizedBox(height: 3,),
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
                    'Os recursos captados na venda das cotas poderão ser utilizados para a aquisição de imóveis rurais ou urbanos, construídos ou em construção, destinados a fins comerciais ou residenciais, bem como para a aquisição de títulos e valores mobiliários ligados ao setor imobiliário, tais como cotas de outros FIIs, Letra de Crédito Imobiliário (LCI), Certificado de Recebíveis Imobiliários (CRI) e ações de companhias do setor imobiliário. '
                    , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
                ),
              ),
            ),

          ],

        ),

      ),
    );
  }
}
