import 'package:app_noticias/Pages_Information/Fii_info.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class tipos_FIIs extends StatefulWidget {


  @override
  State<tipos_FIIs> createState() => _tipos_FIIsState();




}

class _tipos_FIIsState extends State<tipos_FIIs> {





  Map<String, double> dataMap = {
    "Fundos de Tijolo": 180,
    "Fundos de Papel": 86,
    "Fundos de Fundo": 47,
    "Fundos Híbridos": 152,
    "Fundos de Desenvolvimento": 54,
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
                                      Text('Dúvidas sobre os tipos de FIIs?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
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
                                                    builder: (context) => tipos_FIIs(),
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
                chartRadius: MediaQuery.of(context).size.width /2.9,

                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 28,
                centerText: "FII's",
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
                  showChartValues: true,
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
                  child: Text(' Quais são os tipos de FIIs?',  textAlign: TextAlign.left,
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

                       title: Text('Fundos de Tijolo'),
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Text('Os Fundos de Tijolo são uma classe de fundos imobiliários compostos por imóveis físicos. Através deles, é possível investir em galpões logísticos, shopping centers, lajes corporativas, agências bancárias, segmento educacional e híbridos.',
                             style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                         ),
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Text('Segue abaixo, 3 fundos desta classe. ',
                             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                         ),
                         Container(
                             height: 125, width: 325,
                             child: Image.asset('images/tijolos.png'))
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
                       title: Text('Fundos de Papel'),
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Text('Fundos de papel são fundos imobiliários (FIIs) que investem em títulos sobre o mercado imobiliário. Esses títulos podem ser CRI’s, LCI’s, LH’s ou quaisquer outros direitos sobre imóveis.',
                             style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Text(' - CRI’s: O CRI - Certificado de Recebível Imobiliário, é um título que oferece um direito de crédito ao investidor. Vale salientar, que somente instituições específicas, denominadas securitizadoras, podem emitir o CRI.',
                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),),
                         SizedBox(height: 2,),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Text(' - LCI’s: A LCI - Letra de Crédito Imobiliário, é um tipo de investimento em renda fixa lastreado ao financiamento do mercado imobiliário. Ou seja, o investidor que comprou o ativo de LCI, tem seu dinheiro usado para investimentos de compra ou financiamento de imóveis.',
                             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                         ),
                         SizedBox(height: 2,),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Text(' - LH’s: As LH - Letras Hipotecárias, são títulos de investimento em Renda Fixa lastreados em crédito imobiliário, que só podem ser emitidos por bancos, instituições financeiras e sociedades de crédito imobiliário.',
                             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                         ),
                         SizedBox(height: 10,),
                         Padding(
                           padding: const EdgeInsets.all(5.0),
                           child: Text('Segue abaixo, 3 fundos desta classe. ',
                             style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                         ),
                         Container(
                             height: 125, width: 325,
                             child: Image.asset('images/papel.png'))
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

                    title: Text('Fundos de Fundos'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Os fundos de fundos ou também conhecidos como  FOFs (funds of funds), são fundos de investimentos que aplicam em cotas de outros fundos de investimento. Dividindo-se em Fundos de Fundos Imobiliários, Fundos de Fundos Multimercado e Fundos de Fundos de Ações.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 2,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(' - Fundos de Fundos Imobiliários: Os fundos de fundos imobiliários investem seus recursos em outros fundos imobiliários disponíveis em bolsa.',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),),
                      SizedBox(height: 2,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(' - Fundos de Fundos Multimercado: Os FOFs multimercado investem em outros fundos multimercados.',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ),
                      SizedBox(height: 2,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(' - Fundos de Fundos de Ações: Os FOFs de ações são compostos várias ações selecionadas pelo gestor do fundo de investimento.',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Segue abaixo, 3 fundos desta classe. ',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ),
                      Container(
                          height: 125, width: 325,
                          child: Image.asset('images/fof.png'))
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

                    title: Text('Fundos Híbridos'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('São fundos imobiliários que investem em mais de uma classe de ativos, como por exemplo, setor de varejo, educacional, alimentício, logístico e lajes corporativas.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Segue abaixo, 3 fundos desta classe. ',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ),
                      Container(
                          height: 125, width: 325,
                          child: Image.asset('images/hibrido.png'))
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

                    title: Text('Fundos de Desenvolvimento'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Os fundos de desenvolvimento imobiliário são uma categoria de Fundos Imobiliários que tem como finalidade investir em projetos do setor imobiliário para auferir lucro com arrendamento ou venda de imóveis prontos. Ou seja,  é capitalizar obras e investimentos imobiliários, lucrar com os benefícios da obra quando ela estiver pronta.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Segue abaixo, 3 fundos desta classe. ',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                      ),
                      Container(
                        height: 125, width: 325,
                          child: Image.asset('images/desenvolvimento.png'))
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
