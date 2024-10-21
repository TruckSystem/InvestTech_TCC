
import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPageData extends StatefulWidget {

  final String img;
  final String description;
  final String author;
  final String title;
  final String publishedAt;
  final String url;


const NewsPageData({this.img,this.description,this.title,this.author, this.publishedAt, this.url});


  @override
  State<NewsPageData> createState() => _NewsPageDataState();
}
class _NewsPageDataState extends State<NewsPageData> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(widget.img), fit: BoxFit.cover
                  )
              ),
            ),



            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(widget.title.toString(), style: TextStyle(
                  color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text('Autor: ',style: TextStyle(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w900),),
                  Text(widget.author.toString(), style: TextStyle(
                      color: Colors.black, fontSize: 13),),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.description.toString(), style: TextStyle(fontSize: 22),),
                ),
              ),
            ),

            TextButton(
              onPressed: () async{
                if(await canLaunch(widget.url)){
                  await launch(widget.url);
                }else {
                  throw 'Could not launch $widget';
                }
              },

              child: Text('Visualizar notícia completa', style: TextStyle(fontSize: 22),),
            )

          ],
        ),

      ),
    );
  }
}
