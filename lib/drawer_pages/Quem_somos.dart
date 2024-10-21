import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class quemSomos extends StatefulWidget {

  @override
  State<quemSomos> createState() => _quemSomosState();
}

class _quemSomosState extends State<quemSomos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white12,
                  Colors.white70,
                ],
              ),
              //  color: Color(0xEB37D93F),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
          ),
          child: ListView(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
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

                    SizedBox(height: 1,)
                  ],
                ),
              ),

              Image.asset('images/abertura.png'),


              Padding(
                padding: const EdgeInsets.all(15.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('InvestTech', style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 56,
                      color: Colors.black,
                      fontWeight: FontWeight.w900
                    ),
                      textAlign: TextAlign.left,

                    ),

                    Text('Informar e Educar', style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 25,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w900
                    ),
                      textAlign: TextAlign.left,

                    ),

                    Divider(
                      color: Colors.black,
                    ),


                    SizedBox(width: 303.0, height: 180.0,
                      child: SingleChildScrollView(
                      child: Text('É uma aplicação sem fins lucrativos desenvolvida com o objetivo de contribuir para educação financeira de muitas pessoas. Voltada para todos os públicos, ou seja, com ou sem conhecimento de mercado financeiro. A partir de uma aplicação fácil de ser compreendida e manuseada pelo público em geral.'
                      , style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: const Color(0xff868686),
                          fontWeight: FontWeight.w500,

                        ),
                      textAlign: TextAlign.left,),
                      ),
                    ),
                    Divider( color: Colors.black38,)


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
