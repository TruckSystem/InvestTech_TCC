import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ANBIMApage extends StatefulWidget {


  @override
  State<ANBIMApage> createState() => _b3pageState();
}

class _b3pageState extends State<ANBIMApage> {
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
                    "images/ANBIMA.png", height: 150, width: 150,),
              ),
             Card(
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)
                 ),
                 elevation: 5,
                 child: Padding(
                   padding: EdgeInsets.all(10),
                   child: Text(
                     'Associação Brasileira das Entidades dos Mercados Financeiro e de Capitais fala em nome das instituições como bancos, gestoras, corretoras, distribuidoras e administradoras. Reunindo diversas empresas diferentes entre si com o objetivo de reproduzir dentro de casa a pluralidade dos mercados. Nasceu em 2009 a partir da união de duas entidades e representam os mercados há quatro décadas. Atuando na organização em torno de quatro compromissos: representar, autorregular, informar e educar.'

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
                        'O trabalho da  Anbima é regulamentar, fiscalizar e cobrar qualquer empresa que atue no setor financeiro. Ou seja, o objetivo da regulamentação é prevenir e investigar fraudes, manter os mercados eficientes e transparentes.  Entretanto, cabe ressaltar que a  Anbima tem um método diferente de outras entidades como a Comissão de Valores Mobiliários (CVM), pois ela atua com base na autorregulação, o que significa que as empresas financeiras se uniram a fim de desenvolver melhores práticas de gestão.'
                              , style: TextStyle(
                                     fontSize: 18,
                                    letterSpacing: 0.5,
                                    wordSpacing: 0.5,
                            ),
                      ),



                    ),
                    TextButton(


                      onPressed: () async{

                            const url = 'https://www.anbima.com.br/pt_br/pagina-inicial.htm';
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
