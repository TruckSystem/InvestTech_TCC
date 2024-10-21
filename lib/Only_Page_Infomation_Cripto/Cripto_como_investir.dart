import 'package:app_noticias/Pages_Information/Cripto.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cripto_como_investir extends StatefulWidget {


  @override
  State<Cripto_como_investir> createState() => _Cripto_como_investirState();
}

class _Cripto_como_investirState extends State<Cripto_como_investir> {
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
                          builder: (context) => cripto()
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
                                      Text('Dúvidas sobre como investir em criptomoedas?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
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
                                                    builder: (context) => Cripto_como_investir(),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/cripto_como_investir.jpg"
                            )
                        ),
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
                        child: Text(' Como investir em criptomoedas?',  textAlign: TextAlign.left,
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
                        child: Text('Podemos investir em criptmoedas de duas maneiras. A primeira é por meio das operações de derivativos de balcão. Onde os derivativos são contratos entre duas partes, cujos valores dependem dos preços de ativos ou do prazo de duração do contrato. Como, por exemplo, mercado futuro e mercado de opções.'
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
                        child: Text('A segunda e mais usual é através de ETFS. O Exchange Traded Fund (ETF) é um fundo negociado em Bolsa que busca refletir as variações e a rentabilidade de índices de moedas cujas carteiras teóricas são compostas, majoritariamente, por ativos ou derivativos de câmbio.'
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
                        child: Text('Às duas opções descritas acima podem ser realizadas, seguindo uma sequência simples: 1° Deve-se escolher umas das várias corretoras do mercado (RICO, XP, ITAÚ e Etc). 2° Abrir conta na corretora de valores - Para abrir a conta em uma corretora de valores é preciso realizar um cadastro com informações pessoais. 3° Transferir dinheiro para a conta - Existem várias formas de realizar a transferência (PIX, DOC, TED). 4° Escolher o ETF  ou derivativo na qual você deseja comprar.'
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
