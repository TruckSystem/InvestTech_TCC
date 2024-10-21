import 'package:app_noticias/Pages_Information/acoes_info.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class acoes_Tipos extends StatefulWidget {

  @override
  State<acoes_Tipos> createState() => _acoes_TiposState();
}

class _acoes_TiposState extends State<acoes_Tipos> {

  Map<String, double> dataMap = {
    "Ações ordinárias": 1,
    "Ações preferenciais": 1,
    "Units": 1,
    "Ações nominativas": 1,
    "Ações escriturais": 1,
  };



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
                          builder: (context) => acoes_info()
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
                                      Text('Dúvidas sobre as categorias de ações?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
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
                                                    builder: (context) => acoes_Tipos(),
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

              height: 250,
              child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 1250),
                chartLegendSpacing: 28,
                chartRadius: MediaQuery.of(context).size.width /2.2,

                initialAngleInDegree: 0,

                ringStrokeWidth: 28,
                centerText: "Ações",
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,

                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: false,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                ),
                // gradientList: ---To add gradient colors---
                // emptyColorGradient: ---Empty Color gradient---
              ),
            ),
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
                  child: Text(' Quais são as categorias de ações?',  textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                    ),),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: ExpansionTile(

                    title: Text('Ações ordinárias'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Ações ordinárias são representadas pela sigla ON, é um tipo de papel que traz mais direitos ao acionista. Dentre esses direitos podemos destacar duas: dão ao seu detentor direito de voto nas assembleias de acionistas, ou seja, o investidor tem o direito de participar das decisões da organização.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('O segundo direito e não menos importante é que ele assegura ao acionista minoritário o direito de vender suas ações por, pelo menos, 80% do valor pago aos majoritários. Assim, caso ocorra uma venda da organização, os acionistas desta classe estarão protegidos. ',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),

                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: ExpansionTile(

                    title: Text('Ações preferenciais'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Ações preferenciais são representadas pela sigla EN, é um tipo de papel que apesar de não proporcionar ao acionistas muitos direitos em comparação com outras ações. As preferenciais têm uma particularidade importante, elas permitem o recebimento de dividendos em valor superior ao das ações ordinárias, bem como a prioridade no recebimento de reembolso do capital.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: ExpansionTile(

                    title: Text('Units'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Units são ativos compostos por mais de uma classe de valores mobiliários, como uma ação ordinária e um bônus de subscrição, por exemplo, negociados em conjunto. As units são compradas e/ou vendidas no mercado como uma unidade.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: ExpansionTile(

                    title: Text('Ações nominativas'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('As ações nominativas são ações que tem como características o nome do proprietário, e que a venda precisa ser registrada na empresa que a expediu. Assim, um comprador de uma ação nominativa só pode dizer ser detentor do título depois da efetivação do registro.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),

                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                child: Card(
                  elevation: 5,
                  child: ExpansionTile(

                    title: Text('Ações escriturais'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Ações escriturais são aquelas que não possuem um registro individual que certificam ou comprovam sua existência. Onde são apresentadas por meio de um registro em conta de depósito. Assim, não sendo necessário a emissão de um certificado físico.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),

                    ],
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
