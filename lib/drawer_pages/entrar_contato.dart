
import 'dart:convert';

import 'package:app_noticias/screens/newHome_page.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mailer/smtp_server.dart';
import 'package:path/path.dart' as Path;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path/path.dart';
import 'package:http/http.dart' as http;
class entrarContato extends StatefulWidget {

  @override
  State<entrarContato> createState() => _entrarContatoState();
}

class _entrarContatoState extends State<entrarContato> {

  Future <void> _lauchLink(String url) async {
    if(await canLaunch(url)){
      await launch(url, forceWebView: false, forceSafariVC: false);

    }else {
      print("Não pode executar o link $url");
    }
  }

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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        width:380,
                        child: TextButton.icon(
                          icon: Icon(Icons.phone,  color: Colors.blueAccent, ),
                          label: Text('Telefone', style: TextStyle(fontSize: 22),),
                          onPressed: () => _lauchLink('tel:558598682701'),
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 5,thickness: 2, indent: 20, endIndent: 20,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(

                      elevation: 3,
                      child: Container(width: 380,
                        child: TextButton.icon(
                          icon: Icon(Icons.mail_outline , color: Colors.red,),
                          label: Text('E-mail', style: TextStyle(fontSize: 22),),
                         onPressed: () => _lauchLink('mailto:silva.gomes@aluno.uece.br'),


                        ),
                      ),
                    ),
                  ),
                  Divider(height: 5,thickness: 2, indent: 20, endIndent: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        width:380,
                        child: TextButton.icon(
                          icon: Icon(Icons.contact_phone_sharp,  color: Colors.green, ),
                          label: Text('WhatsApp', style: TextStyle(fontSize: 22),),
                          onPressed: () => _lauchLink('tel:558598682701'),
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 5,thickness: 2, indent: 20, endIndent: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      child: Container(
                        width:380,
                        child: TextButton.icon(
                          icon: Icon(FontAwesome.instagram,  color: Colors.orange, ),
                          label: Text('Instagram', style: TextStyle(fontSize: 22),),
                          onPressed: () => _lauchLink('https://www.instagram.com/diego_gomes_t_t/'),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),

      )
    );
  }

}


