import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BACENpage extends StatefulWidget {


  @override
  State<BACENpage> createState() => _b3pageState();
}

class _b3pageState extends State<BACENpage> {
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
                    "images/BACEN.png", height: 150, width: 150,),
              ),
             Card(
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                 ),
                 elevation: 5,
                 child: Padding(
                   padding: EdgeInsets.all(10),
                   child: Text(
                     'O Banco Central do Brasil foi criado pela Lei 4.595, de 31 de dezembro de 1964. É o principal executor das orientações do Conselho Monetário Nacional e responsável por garantir o poder de compra da moeda nacional, tendo por objetivos: - zelar pela adequada liquidez da economia; - manter as reservas internacionais em nível adequado; - estimular a formação de poupança; - zelar pela estabilidade e promover o permanente aperfeiçoamento do sistema financeiro.'
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
                        'Dentre suas atribuições estão: - emitir papel-moeda e moeda metálica; - executar os serviços do meio circulante; - receber recolhimentos compulsórios e voluntários das instituições financeiras e bancárias; - realizar operações de redesconto e empréstimo às instituições financeiras; - regular a execução dos serviços de compensação de cheques e outros papéis; - efetuar operações de compra e venda de títulos públicos federais e exercer o controle de crédito no país'
                              , style: TextStyle(
                                     fontSize: 18,
                                    letterSpacing: 0.5,
                                    wordSpacing: 0.5,
                            ),
                      ),



                    ),
                    TextButton(


                      onPressed: () async{

                            const url = 'https://www.bcb.gov.br/acessoinformacao/institucional';
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
