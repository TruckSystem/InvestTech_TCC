import 'package:app_noticias/Pages_Information/Fii_info.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rendimentos_FII extends StatefulWidget {


  @override
  State<rendimentos_FII> createState() => _rendimentos_FIIState();
}

class _rendimentos_FIIState extends State<rendimentos_FII> {
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
                                        Text('Dúvidas sobre a distribuição de rendimentos dos FIIs?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
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
                                                      builder: (context) => rendimentos_FII(),
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
                            image: AssetImage("images/rendimentos.png"
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
                          child: Text(' Como um FII pode distribuir proventos?',  textAlign: TextAlign.left,
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
                            'Para os fundos de tijolos, a remuneração/dividendos acontece por meio dos contratos que cada imóvel firma com os locatários. Ou seja, empresas alugam galpões, lajes, salas de prédios e etc. Pagando seus aluguéis mensalmente e esses rendimentos são transferidos para seus cotistas.'
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
                            'No que se refere aos fundos de papel, fundo de fundos e híbridos, os rendimentos vêm de títulos imobiliários (CRI´S, LH’s, LCI’s e Renda fixa) que compõem o patrimônio do FII. Ou seja, os fundos emprestaram parte de seu patrimônio, e recebem mensalmente rendimentos referente a cada valor emprestado. Logo, esses rendimentos são transferidos para seus cotistas.'
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
                            'Já para os fundos de desenvolvimento, os mesmos adquirem terrenos ou propriedades ainda não desenvolvidos e financiam a construção de empreendimentos imobiliários, como edifícios comerciais e residenciais, hotéis, entre outros. Com o objetivo de vender ou alugar esses empreendimentos quando eles estiverem prontos, buscando obter lucro com a valorização do projeto. Dessa maneira, os fundos de desenvolvimento arrecadam recursos com o propósito de investi-los na construção de imóveis com o objetivo de obter ganhos por meio da posterior comercialização. E com a venda conseguem distribuir rendimentos aos seus cotistas.'
                            , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
                        ),
                      ),
                    ),

                    /*
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
                            'Um ponto muito importante que deve ser levantado é que o pagamento de dividendos em FIIs se baseia na Lei 9.779/99. A lei afirma que os FIIs devem distribuir a seus cotistas, no mínimo, 95% dos lucros auferidos pelo regime de caixa a cada semestre. Essa apuração será feita com base em balanço ou balancete semestral, encerrados em 30 de junho e 31 de dezembro de cada ano.'
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
                            'O investidor de fundo de investimentos imobiliários pode obter ganhos de duas maneiras. A 1° por meio da venda de suas cotas, é claro com lucro. Ou seja, o mesmo comprou uma cota por 100 reais e vendeu por 105, obtendo assim um lucro de 5 reais. A outra maneira e mais tradicional são por meio dos dividendos de cada cota. Aqui podemos fazer uma diferença entre os tipos de fundos.'
                            , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
                        ),
                      ),
                    ),
                    * */


                  ],
                ),
              )


            ],
          ),
        ),
    );
  }
}
