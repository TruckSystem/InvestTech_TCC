import 'dart:convert';

import 'package:app_noticias/Pages_Information/Cripto.dart';
import 'package:app_noticias/Pages_Information/Fii_info.dart';
import 'package:app_noticias/Pages_Information/Fundo_Investimento_Cadeias_Agroindustriais.dart';
import 'package:app_noticias/Pages_Information/Fundo_Investimento_Imobili%C3%A1rio.dart';
import 'package:app_noticias/Pages_Information/Renda_fixa.dart';
import 'package:app_noticias/Pages_Information/acoes_info.dart';
import 'package:app_noticias/drawer_pages/Quem_somos.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:app_noticias/newApi/source.dart';
import 'package:app_noticias/orgaos/ANBIMA.dart';
import 'package:app_noticias/orgaos/BACEN.dart';
import 'package:app_noticias/orgaos/b3.dart';
import 'package:app_noticias/orgaos/cvm.dart';
import 'package:app_noticias/screens/Home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'noticias_mercado.dart';

class newHome_page extends StatefulWidget {





  @override
  State<newHome_page> createState() => _newHome_pageState();
}

class _newHome_pageState extends State<newHome_page> {

 String stringResponse;
 Map mapResponse;
  List listResponse =[];

  Future apicall() async{
    http.Response response;
    String url = "https://newsapi.org/v2/everything?q=financeiro&from=2023/11/25&to=2023/12/05&sortBy=popularidade&apiKey=976111860d5f4ef48daf3492fcce312f";
    response = await http.get(Uri.parse(url));

    if(response.statusCode ==200){
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(response.body);
        listResponse = mapResponse['articles'];
      });
    }
    else{
      print("Não foi possível carregar");

    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context){
          return IconButton(onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu_open_sharp),
          );
        }),
        backgroundColor: Colors.black,

          title: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text("Olá, bem-vindo(a)!", style: TextStyle(

              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 1,
              color: Colors.white,
            ),
            ),
          ),

      ),
      drawer: Drawer(
        child: ListView(

          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [

            const UserAccountsDrawerHeader(

              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://investidorsardinha.r7.com/wp-content/uploads/2021/04/investidor-profissional-o-que-e-pros-contras-e-como-se-tornar-um-1200x900.jpg'),

              ),

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.blue,
                    ],
                  ),

                  //  color: Color(0xEB37D93F),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),

              ),


            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.blueAccent,),
              title: Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => newHome_page(),

                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blueAccent,),
              title: const Text('Quem somos'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => quemSomos(),

                ));
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail, color: Colors.blueAccent,),
              title: const Text('Fale conosco'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => entrarContato(),

                ));
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(


        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top:1, left: 15, right: 15, bottom: 1),

                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black,
                          Colors.blue,
                        ],
                      ),
                    //  color: Color(0xEB37D93F),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                  ),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 1, bottom: 10),
                        width: MediaQuery.of(context).size.width,
                        height: 40,
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
                                  fontSize: 20,
                                  color: Colors.black.withOpacity(0.7)
                              ),
                              prefixIcon: Icon(Icons.search_outlined,size: 25,)
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      SingleChildScrollView(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(

                                child: Card(

                                  elevation: 2,
                                  color: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),

                                  child: Container(

                                    alignment: Alignment.center,
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey ,
                                      borderRadius: BorderRadius.circular(15),
                                    ),

                                    child: Text('B3',
                                    style: TextStyle(
                                      fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white
                                    ),),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => b3page(),

                                  ));
                                },


                              ),
                              InkWell(

                                child: Card(

                                  elevation: 2,
                                  color: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),

                                  child: Container(

                                    alignment: Alignment.center,
                                    width: 80,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey ,
                                      borderRadius: BorderRadius.circular(15),
                                    ),

                                    child: Text('CVM',
                                      style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => cvmpage(),

                                  ));
                                },


                              ),



                              InkWell(

                                child: Card(

                                  elevation: 2,
                                  color: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),

                                  child: Container(

                                    alignment: Alignment.center,
                                    width: 85,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey ,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text('ANBIMA',
                                      style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => ANBIMApage(),
                                  ));
                                },
                              ),

                              InkWell(
                                child: Card(
                                  elevation: 2,
                                  color: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  ),

                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 85,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey ,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Text('BACEN',
                                      style: TextStyle(
                                          fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white
                                      ),),
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => BACENpage(),

                                  ));
                                },
                              ),
                            ],
                        )
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),


                /*
                *
                Container(

                  padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Card(

                            elevation:7,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Container(
                              height: 210,
                              width: 180,
                              color: Color(0xFFF5F3FF),

                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => Fundo_Investimento_Imobiliario(),

                                  ));

                                },
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Center(

                                        child: Image.asset("images/fii150.png"),

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
                *
                *
                *
                *
                *
                * SizedBox(height: 0.1),
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
                * */







              ],
            ),
            Column(
              children: [
                SizedBox(height: 5,),
                Container(
                  margin: EdgeInsets.only(right: 260),
                  child: Column(
                      children: [
                        Text('Categorias',
                          style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 25,
                          ),)
                      ]


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

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 8,
                    // Define the shape of the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Define how the card's content should be clipped
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    // Define the child widget of the card
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => fii_Info()
                        ));

                      },


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // Add padding around the row widget
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Add an image widget to display an image
                                Image.asset(
                                 'images/fii100.png',
                                  height: 80,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                // Add some spacing between the image and the text
                                Container(width: 2),
                                // Add an expanded widget to take up the remaining horizontal space
                                Expanded(

                                  child: Container(
                                    alignment: Alignment.center,

                                    child: Row(


                                      children: <Widget>[
                                        // Add some spacing between the top of the card and the title

                                        // Add a title widget
                                        Container(
                                          width: 220,

                                          child: Padding(

                                            padding: const EdgeInsets.only(top: 20),
                                            child: Text(
                                              'Fundos de Investimentos Imobiliários - FIIs', style: TextStyle(
                                              fontSize: 18, fontWeight: FontWeight.bold,
                                            ),

                                            ),
                                          ),
                                        ),
                                        // Add some spacing between the title and the subtitle
                                        Container(width: 1),
                                        // Add a subtitle widget
                                        // Add some spacing between the subtitle and the text

                                        // Add a text widget to display some text
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Icon(Icons.arrow_forward_outlined,
                                            color: Colors.blueAccent,
                                            size: 30.0,),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 8,
                    // Define the shape of the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Define how the card's content should be clipped
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    // Define the child widget of the card
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => cripto()
                        ));

                      },


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Add padding around the row widget
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Add an image widget to display an image
                                Image.asset(
                                  'images/criptonew.png',
                                  height: 80,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                // Add some spacing between the image and the text
                                Container(width: 2),
                                // Add an expanded widget to take up the remaining horizontal space
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // Add some spacing between the top of the card and the title
                                      Container(height: 5),
                                      // Add a title widget
                                      Container(
                                        width: 220,
                                        child: Padding(

                                          padding: const EdgeInsets.only(top: 30),
                                          child: Text(
                                            'Criptomoedas', style: TextStyle(
                                              fontSize: 18, fontWeight: FontWeight.bold
                                          ),

                                          ),
                                        ),
                                      ),
                                      // Add some spacing between the title and the subtitle

                                      // Add a subtitle widget
                                      // Add some spacing between the subtitle and the text
                                      Container(width: 1),
                                      // Add a text widget to display some text
                                      Padding(
                                        padding: const EdgeInsets.only(top: 25),
                                        child: Icon(Icons.arrow_forward_outlined,
                                          color: Colors.blueAccent,
                                          size: 30.0,),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 8,
                    // Define the shape of the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Define how the card's content should be clipped
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    // Define the child widget of the card
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => acoes_info()
                        ));

                      },


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Add padding around the row widget
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Add an image widget to display an image
                                Image.asset(
                                  'images/acoes.png',
                                  height: 80,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                // Add some spacing between the image and the text
                                Container(width: 2),
                                // Add an expanded widget to take up the remaining horizontal space
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // Add some spacing between the top of the card and the title

                                      // Add a title widget
                                      Container(
                                        width: 220,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 30),
                                          child: Text(
                                            'Ações', style: TextStyle(
                                              fontSize: 18, fontWeight: FontWeight.bold
                                          ),

                                          ),
                                        ),
                                      ),
                                      // Add some spacing between the title and the subtitle

                                      // Add a subtitle widget
                                      // Add some spacing between the subtitle and the text
                                      Container(width: 2),
                                      // Add a text widget to display some text
                                      Padding(
                                        padding: const EdgeInsets.only(top: 25),
                                        child: Icon(Icons.arrow_forward_outlined,
                                          color: Colors.blueAccent,
                                          size: 30.0,),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 8,
                    // Define the shape of the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // Define how the card's content should be clipped
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    // Define the child widget of the card
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => renda_Fixa(),

                        ));

                      },


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Add padding around the row widget
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Add an image widget to display an image
                                Image.asset(
                                  'images/Renda_fixa.png',
                                  height: 80,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                // Add some spacing between the image and the text
                                Container(width: 2),
                                // Add an expanded widget to take up the remaining horizontal space
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // Add some spacing between the top of the card and the title
                                      Container(height: 5),
                                      // Add a title widget
                                      Container(
                                        width: 220,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 30),
                                          child: Text(
                                              'Renda Fixa', style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.bold
                                            ),

                                          ),
                                        ),
                                      ),
                                      // Add some spacing between the title and the subtitle

                                      // Add a subtitle widget
                                      // Add some spacing between the subtitle and the text
                                      Container(width: 2),
                                      // Add a text widget to display some text
                                      Padding(
                                        padding: const EdgeInsets.only(top: 25),
                                        child: Icon(Icons.arrow_forward_outlined,
                                          color: Colors.blueAccent,
                                          size: 30.0,),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
              Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(right: 155),
                    child: Column(
                        children: [
                          Text('Notícias do Mercado',
                            style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 25,
                            ),)
                        ]


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




                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width*0.9,
                      child: ListView.builder(shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: listResponse.length,
                        itemBuilder: (context, index){

                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                NewsPageData(img: listResponse[index]['urlToImage'],
                                  title: listResponse[index]['title'],
                                  description: listResponse[index]['description'],
                                  author: listResponse[index]['author'],
                                    publishedAt: listResponse[index]['publishedAt'],
                                  url: listResponse[index]['url'],




                                )
                               ));
                            },
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                                color: Colors.white60,
                                  border: Border.all(color: Colors.blue, width: 0.5)
                              ),
                              child: Row(
                                children: [



                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                        image: NetworkImage(listResponse[index]['urlToImage'].toString()),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                  Flexible(child: Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                                text: listResponse[index]['title'].toString(),
                                            style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold)),

                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 9, right: 0, top: 10),
                                          child: Row(
                                            children: [
                                              Text('Autor:',style: TextStyle(color: Colors.black, fontSize: 11,fontWeight: FontWeight.w900),), SizedBox(width: 1,),
                                              Text(listResponse[index]['author'].toString(),style: TextStyle(color: Colors.black, fontSize: 10,) ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),),

                                ],

                              ),
                            ),
                          ),
                        );
                        },),
                    ),
                  )

                ],
              )



          ],
        ),




      ),




    );
  }
}
