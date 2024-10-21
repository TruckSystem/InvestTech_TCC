import 'package:app_noticias/Pages_Information/Renda_fixa.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class titulos_renda_Fixa extends StatefulWidget {


  @override
  State<titulos_renda_Fixa> createState() => _titulos_renda_FixaState();
}

class _titulos_renda_FixaState extends State<titulos_renda_Fixa> {

  Map<String, double> dataMap = {
    "CDB": 1,
    "LCI": 1,
    "CRA": 1,
    "LC": 1,
    "CRI": 1,
    "Tesouro Direto" :1
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
                                      Text('Dúvidas sobre os títulos de renda fixa?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
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
                                                    builder: (context) => titulos_renda_Fixa(),
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
                centerText: "Títulos",
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
                  child: Text(' Quais são os títulos de renda fixa?',  textAlign: TextAlign.left,
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

                    title: Text('Tesouro Direto'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('O Tesouro Direto é um sistema do Tesouro Nacional, operacionalizado por meio de uma parceria com a B3. Através dele, investidores pessoas físicas podem comprar títulos públicos, via internet, pelo site do Tesouro Direto.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('O Tesouro Direto é uma excelente alternativa de investimento pois oferece títulos com diferentes tipos de rentabilidade (prefixada, ligada à variação da inflação ou à variação da taxa de juros básica da economia - Selic), diferentes prazos de vencimento e também diferentes fluxos de remuneração.',
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

                    title: Text('CDB'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('O Certificado de Depósito Bancário (CDB) é um dos instrumentos financeiros mais tradicionais do mercado brasileiro e o título de Renda Fixa mais adquirido pelo investidor pessoa física.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Os principais atrativos do CDB estão na possibilidade de contratação do ativo com liquidez diária e o fato do instrumento ser elegível à cobertura do Fundo Garantidor de Crédito (FGC). O risco de quem adquire um CDB está diretamente associado à solidez de seu emissor, uma instituição financeira.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('As características do CDB são determinadas no momento de sua contratação, ou seja, prazo e rendimentos são previamente definidos. Sua remuneração, pode ser prefixada ou pós-fixada e são baseadas em diversos indexadores',
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

                    title: Text('LCI'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Letra de Crédito Imobiliário (LCI) é um dos instrumentos de Renda Fixa mais procurados pelo investidor pessoa física devido a uma das suas principais características que é sua isenção de Imposto de Renda para esse público.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('A LCI conta ainda com a segurança adicional de que está vinculado à carteira da de crédito imobiliário da instituição financeira. Outro diferencial é o fato de ser é elegível à cobertura do Fundo Garantidor de Crédito (FGC). Todavia, este ativo não possui liquidez diária, o prazo mínimo de vencimento desse ativo varia de acordo com o indexador que possui.',
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

                    title: Text('CRA'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Os Certificados de Recebíveis do Agronegócio (CRA) são títulos de renda fixa lastreados em recebíveis originados de negócios entre produtores rurais, ou suas cooperativas, e terceiros, abrangendo financiamentos ou empréstimos relacionados à produção, à comercialização, ao beneficiamento ou à industrialização de produtos, insumos agropecuários ou máquinas e implementos utilizados na produção agropecuária.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Por se tratar de um investimento em renda fixa, o investidor tem a previsão do fluxo de caixa das remunerações, amortizações do título e os rendimentos do CRA são isentos de Imposto de Renda para pessoa física.',
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

                    title: Text('LC'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('A Letra de Câmbio (LC) é uma forma de captação de recursos utilizada por empresas de crédito. Ao adquirir uma LC, o investidor empresta dinheiro à companhia emissora. Essa, por sua vez, paga o empréstimo com uma taxa de rentabilidade no vencimento do título, quando o investidor poderá resgatar o dinheiro investido e os rendimentos do período.',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Esses títulos podem ser negociados pelos registradores e emitidos com remuneração pré ou pós-fixada. Podem ser aceitantes de Letras de Câmbio os bancos múltiplos com carteira de crédito, financiamento e investimento e as sociedades de crédito, financiamento e investimento.',
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

                    title: Text('CRI'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('O Certificado de Recebíveis Imobiliários (CRI) é um título que gera um direito de crédito ao investidor. Onde o investidor terá direito a receber uma remuneração (geralmente juros) do emissor e, periodicamente, ou quando do vencimento do título, receberá de volta o valor investido (principal).',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text('Vale salientar que somente instituições específicas, denominadas securitizadoras, podem emitir o CRI. Os CRIs podem ter por remuneração: taxa de juro prefixada, Taxa Referencial (TR) e Taxa de Juro de Longo Prazo (TJLP). Ou até mesmo, é permitida a emissão de CRIs com cláusula de correção monetária com base nos coeficientes fixados para correção de títulos públicos federais ou índice de preços, ajustada para mais ou para menos por taxa fixa',
                          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      ),
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
