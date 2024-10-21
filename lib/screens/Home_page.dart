

import 'package:app_noticias/Pages_Information/Fundo_Investimento_Cadeias_Agroindustriais.dart';
import 'package:app_noticias/Pages_Information/Fundo_Investimento_Imobili%C3%A1rio.dart';
import 'package:app_noticias/componentes/Item2_NaviBar.dart';
import 'package:app_noticias/componentes/Item3_NaviBar.dart';
import 'package:app_noticias/componentes/Item4_NaviBar.dart';
import 'package:app_noticias/helper/category_model.dart';
import 'package:app_noticias/screens/Fii_page.dart';
import 'package:app_noticias/screens/noticias_mercado.dart';
import 'package:flutter/material.dart';

import 'newHome_page.dart';
import 'noti1.dart';



class Home_page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
/*
*
* List pages = [
      Home_page(),
      Item2_NaviBar(),
      Item3_NaviBar(),
      Item4_NaviBar()
    ];*/



    return Scaffold(

      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top:5, left: 15, right: 15, bottom: 5),

            decoration: BoxDecoration(
              color: Color(0xEB37D93F),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Icon(Icons.stacked_bar_chart,
                    size: 30,
                    color: Colors.white,),
                    Padding(padding: EdgeInsets.only(left: 3, bottom: 0, top: 2),
                      child: Text("Bem-vindo(a) Investidor", style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          wordSpacing: 1,
                          color: Colors.white,
                      ),
                      ),
                    ),
                    Icon(Icons.notifications_active,
                      size: 30,
                      color: Colors.white,)

                  ],
                ),
                SizedBox(height: 25,),

                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Buscar...",
                      hintStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.black.withOpacity(0.7)
                      ),
                      prefixIcon: Icon(Icons.search_outlined,size: 25,)
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 8,),

          Container(
            margin: EdgeInsets.only(right: 255),
            child: Column(
              children: [
                Text('Categorias',
                  style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 28,
                  ),)
              ],


              //children: [
               // Container(

                //  width: MediaQuery.of(context).size.width,
               //   decoration: BoxDecoration(
                //    color: Colors.black12,
                //    borderRadius: BorderRadius.circular(15)
               //   ),
               // ),

            //  ],
            ),
          ),

          //Cards

          Container(

            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [

                    Container(
                      height: 240,
                      width: 180,

                      child: Card(
                        color: Color(0xFFF5F3FF),
                        elevation:7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Fundo_Investimento_Imobiliario(),

                            ));

                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Center(

                                  child: Image.asset("images/Fii.png"),


                                ),
                              ),
                              Text("Fundos de Investimentos Imobiliários - FIIs", style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),

                      ),



                    ),

                    //Segundo container

                    SizedBox(
                      width: 10,
                    ),
                    Container(

                      height: 240,
                      width: 180,

                      child: Card(
                        color: Color(0xFFF5F3FF),
                        elevation:7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Fundo_Investimento_Cadeias_Agroindustriais(),

                            ));

                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Center(

                                  child: Image.asset("images/Fii_Agro.png")
                                  ,
                                ),
                              ),
                              Text("Fundo de Investimento em Cadeias Agroindustriais - FIAgro", style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),

                      ),

                    )
                  ],
                )
              ],

            ),
          ),


          SizedBox(height: 0.1),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [

                    Container(
                      height: 230,
                      width: 180,

                      child: Card(
                        color: Color(0xFFF5F3FF),
                        elevation:7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Noticias(),

                            ));

                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Center(

                                  child: Image.asset("images/acoes.png"),


                                ),
                              ),
                              Text("Ações", style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ),

                      ),



                    ),

                    //Quarto container

                    SizedBox(
                      width: 10,
                    ),
                    Container(

                      height: 230,
                      width: 180,

                      child: Card(
                        color: Color(0xFFF5F3FF),
                        elevation:7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => newHome_page(),
                              //not1()

                            ));

                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Center(

                                  child: Image.asset("images/Renda_fixa.png")
                                  ,
                                ),
                              ),
                              Text("Renda Fixa", style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                                  textAlign: TextAlign.center)
                            ],
                          ),
                        ),

                      ),

                    )
                  ],
                )
              ],

            ),
          ),

        ],
      ),
        /*
        * bottomNavigationBar: BottomNavigationBar(
          key: pages[0],
          items: [
            BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.build)),
            BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.analytics_outlined)),
            BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.person))
          ],
        ),*/
    );
  }
}



