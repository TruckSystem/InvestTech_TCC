import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home_page.dart';


class Abertura extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.6,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.black87,
                        Colors.blue,
                      ],
                    ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(70, 70))
                ),
                child: Center(
                  child: Image.asset(
                      "images/abertura.png"),),
              )
            ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),

              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                padding: EdgeInsets.only(top:35, bottom: 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.elliptical(70, 70))
                ),
                child: Column(
                  children: [
                    Text("InvestTech",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      wordSpacing: 1,
                    ),),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text("Uma abordagem informativa e educacional sobre investimentos",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.8)
                      ),),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Material(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => newHome_page(),

                          ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15, horizontal: 80),
                        child: Text("Iniciar",
                        style: TextStyle( color: Colors.white , fontSize: 22, fontWeight: FontWeight.bold,
                                           letterSpacing: 1   ),),

                          ),
                        ),
                      ),



                  ],
                ),

              ),
            )

          ],

        ),

      ),
    );
  }
}
