import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class cvmpage extends StatefulWidget {


  @override
  State<cvmpage> createState() => _b3pageState();
}

class _b3pageState extends State<cvmpage> {
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
                    "images/cvm.png", height: 150, width: 150,),
              ),
             Card(
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                 ),
                 elevation: 5,
                 child: Padding(
                   padding: EdgeInsets.all(10),
                   child: Text(
                     'A Comissão de Valores Mobiliários (CVM) foi criada em 07 de dezembro de 1976 pela Lei nº 6.385, com o objetivo de disciplinar, fiscalizar e desenvolver o mercado de valores mobiliários no Brasil. É uma entidade autárquica, em regime especial, vinculada ao Ministério da Economia.'
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
                        'A autarquia, com sede na cidade do Rio de Janeiro, é administrada por um Presidente e quatro Diretores nomeados pelo Presidente da República. O Presidente e a Diretoria constituem o Colegiado, que define políticas e estabelece práticas a serem implantadas e desenvolvidas pelo corpo de Superintendentes, a instância executiva da CVM.'
                              , style: TextStyle(
                                     fontSize: 18,
                                    letterSpacing: 0.5,
                                    wordSpacing: 0.5,
                            ),
                      ),



                    ),
                    TextButton(


                      onPressed: () async{

                            const url = 'https://www.gov.br/cvm/pt-br';
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
