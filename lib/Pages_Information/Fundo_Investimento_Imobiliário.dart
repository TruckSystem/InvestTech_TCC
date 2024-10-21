import 'package:app_noticias/screens/Fii_page.dart';
import 'package:app_noticias/screens/Home_page.dart';
import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/material.dart';


class Fundo_Investimento_Imobiliario extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        backgroundColor: Colors.green,
        leading: Row(
          children: [
            IconButton( icon: const Icon(Icons.arrow_back_outlined), onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => newHome_page(),

              ));
            },),
            Text("Voltar"),

          ],
        ),
        title: const Text("Fundos Imobiliários"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFF5F3FF),
                image: DecorationImage(
                  image: AssetImage("images/Fii.png")
                )
              ),
            ),
            SizedBox(height: 5,),
            //O que é um fundo imobiliário?
            Card(

              color: Color(0xFFF5F3FF),
              elevation:3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Fii_page(),

                  ));
                },
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' O que é um fundo imobiliário?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                        color: Colors.black,
                          fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(width: 85),

                      IconButton( icon: const Icon(Icons.arrow_forward_outlined), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home_page(),
                        ));
                      },),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 1,),

            Card(

              color: Color(0xFFF5F3FF),
              elevation:3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Fii_page(),

                  ));
                },
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' Quais são os tipos de FIIs?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton( icon: const Icon(Icons.arrow_forward_outlined), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home_page(),
                        ));
                      },),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 1,),

            Card(

              color: Color(0xFFF5F3FF),
              elevation:3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Fii_page(),

                  ));
                },
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' Como funcionam os dividendos nos FIIs?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton( icon: const Icon(Icons.arrow_forward_outlined), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home_page(),
                        ));
                      },),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 1,),

            Card(

              color: Color(0xFFF5F3FF),
              elevation:3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Fii_page(),

                  ));
                },
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' O que significa o dividend yield dos FIIs?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton( icon: const Icon(Icons.arrow_forward_outlined), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home_page(),
                        ));
                      },),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 1,),

            Card(

              color: Color(0xFFF5F3FF),
              elevation:3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Fii_page(),

                  ));
                },
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' O que é o P/VP de um Fii?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton( icon: const Icon(Icons.arrow_forward_outlined), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home_page(),
                        ));
                      },),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 1,),

            Card(

              color: Color(0xFFF5F3FF),
              elevation:3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Fii_page(),

                  ));
                },
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' Como é calculado o rendimento dos FIIs?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton( icon: const Icon(Icons.arrow_forward_outlined), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home_page(),
                        ));
                      },),
                    ],
                  ),
                ),
              ),
            ),


            SizedBox(height: 1,),

            Card(

              color: Color(0xFFF5F3FF),
              elevation:3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Fii_page(),

                  ));
                },
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(' Como investir em FIIs?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton( icon: const Icon(Icons.arrow_forward_outlined), onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home_page(),
                        ));
                      },),
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
