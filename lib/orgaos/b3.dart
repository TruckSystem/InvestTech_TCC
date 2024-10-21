import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class b3page extends StatefulWidget {


  @override
  State<b3page> createState() => _b3pageState();
}

class _b3pageState extends State<b3page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all( 5),
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
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset(
                    "images/b3.png", height: 150, width: 150,),
              ),
             Card(
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                 ),
                 elevation: 5,
                 child: Padding(
                   padding: EdgeInsets.all(10),
                   child: Text(
                     'A B3 é uma das principais empresas de infraestrutura de mercado financeiro no mundo, com atuação em ambiente de bolsa e de balcão. Sociedade de capital aberto – cujas ações (B3SA3) são negociadas no Novo Mercado –, a Companhia integra os índices Ibovespa, IBrX-50, IBrX e Itag, entre outros. Reúne ainda tradição de inovação em produtos e tecnologia e é uma das maiores em valor de mercado, com posição global de destaque no setor de bolsas. '
                         , style: TextStyle(
                       fontSize: 18,
                     letterSpacing: 0.5,
                     wordSpacing: 0.5,
                   ),
                   ),

                 ),
               ),
              SizedBox(height: 5,),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                elevation: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                              'As atividades incluem criação e administração de sistemas de negociação, compensação, liquidação, depósito e registro para todas as principais classes de ativos, desde ações e títulos de renda fixa corporativa até derivativos de moedas, operações estruturadas e taxas de juro e de commodities. A B3 também opera como contraparte central garantidora para a maior parte das operações realizadas em seus mercados e oferta serviços de central depositária e de central de registro. '
                              , style: TextStyle(
                                     fontSize: 18,
                                    letterSpacing: 0.5,
                                    wordSpacing: 0.5,
                            ),
                      ),



                    ),
                    TextButton(


                      onPressed: () async{

                            const url = 'https://www.b3.com.br/pt_br/produtos-e-servicos/negociacao/renda-variavel/';
                            if(await canLaunch(url)){
                            await launch(url);
                            }else {
                            throw 'Could not launch $url';
                        }
                      },

                      child: Text('Visitar página oficial', style: TextStyle(fontSize: 22),),
                    )
                  ],

                ),

              ),
              SizedBox(height: 15,),
            ],

          ),

        ),


      ),

    );
  }
}
