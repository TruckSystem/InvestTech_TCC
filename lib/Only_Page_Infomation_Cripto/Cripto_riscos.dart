import 'package:app_noticias/Pages_Information/Cripto.dart';
import 'package:app_noticias/drawer_pages/entrar_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cripto_Riscos extends StatefulWidget {


  @override
  State<cripto_Riscos> createState() => _cripto_RiscosState();
}

class _cripto_RiscosState extends State<cripto_Riscos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => cripto()
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
                  Container(

                    child: Row(

                      children: [
                        Text(
                          "Invest", style:
                        TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 27),
                        ),
                        Text("Tech",
                          style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w600, fontSize: 27),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(20.0)), //this right here
                              child: Container(
                                height: 350,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Container(height: 200,
                                          child: Image.asset('images/duvida.png')),
                                      SizedBox(height: 30,),
                                      Text('Dúvidas sobre os riscos das criptomoedas?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20, right: 20),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 120,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(
                                                    builder: (context) => entrarContato(),
                                                  ));
                                                },
                                                child: Text(
                                                  "Fale conosco",
                                                  style: TextStyle(color: Colors.white),), color: const Color(0xFF48AF02),
                                              ),
                                            ),
                                            SizedBox(width: 5,),
                                            SizedBox(
                                              width: 120,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(
                                                    builder: (context) => cripto_Riscos(),
                                                  ));
                                                },
                                                child: Text(
                                                  "Fechar", style: TextStyle(color: Colors.white),
                                                ), color: const Color(0xFFB90505),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                        height: 28, width: 30,
                        child: Image.asset('images/duvida.png')
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/cripto_riscos.png"
                            )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      elevation: 5,
                      child: Container(width: 500, height: 22,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 3,),
                        child: Text(' Quais são os riscos das criptomoedas?',  textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Como qualquer tipo de investimento no mercado financeiro, sempre existirão diversos fatores que trazem riscos para o investidor. E com cripotomoedas isso também não é diferente. Os riscos incluem, perda da senha da carteira virtual caso esqueça onde anotou o número do código associado à posse daquela quantidade da criptomoeda; pouca liquidez dos ativos; roubo de senhas de login da sua carteira virtual ou não; e é claro, a desvalorização do ativo.'
                          , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
                      ),
                    ),
                  ),

                ],

              ),
            )

          ],
        ),
      ),
    );
  }
}
