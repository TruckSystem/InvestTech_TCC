import 'package:app_noticias/Pages_Information/Cripto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CoinCard.dart';

class cripto_Top extends StatefulWidget {


  @override
  State<cripto_Top> createState() => _cripto_TopState();
}

class _cripto_TopState extends State<cripto_Top> {
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
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
  'Abaixo é possível visualizar algumas das principais criptomoedas com base no valor de mercado e segundo grandes corretoras do Brasil. Em cada Card é possível observar a imagem, ticket, valor em dólares e variação nos últimos 30 dias, destes principais ativos. Somente a título de conhecimento, não é uma indicação de investimentos.'
                  , style: TextStyle(fontSize: 18, letterSpacing: 0.5, wordSpacing: 0.5,),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(height: 100,
                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey[500], offset: Offset(4, 4), blurRadius: 10, spreadRadius: 1,
                      ),
                      BoxShadow(color: Colors.white, offset: Offset(-4, -4),
                        blurRadius: 10, spreadRadius: 1,
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: Colors.grey[500], offset: Offset(4, 4),
                            blurRadius: 2, spreadRadius: 1,),
                            BoxShadow(color: Colors.white, offset: Offset(-1, -1), blurRadius: 2, spreadRadius: 1,
                            ),
                          ],
                        ),
                        height: 150, width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.network('https://assets.coingecko.com/coins/images/1/standard/bitcoin.png?1696501400'),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown, child: Text('Bitcoin ',
                              style: TextStyle(color: Colors.grey[900],
                                fontSize: 25, fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),
                            Text(
                              'BTC', style: TextStyle(color: Colors.grey[900], fontSize: 20,
                            ),),],),),),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('US\$ 34.179,71', style: TextStyle(
                            color: Colors.grey[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),),
                          Text('-0.4%', style: TextStyle(
                            color: Colors.red[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),)],),
                    ),
                  ],
                ),),),


            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(height: 100,
                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey[500], offset: Offset(4, 4), blurRadius: 10, spreadRadius: 1,
                      ),
                      BoxShadow(color: Colors.white, offset: Offset(-4, -4),
                        blurRadius: 10, spreadRadius: 1,
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: Colors.grey[500], offset: Offset(4, 4),
                            blurRadius: 2, spreadRadius: 1,),
                            BoxShadow(color: Colors.white, offset: Offset(-1, -1), blurRadius: 2, spreadRadius: 1,
                            ),
                          ],
                        ),
                        height: 150, width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.network('https://assets.coingecko.com/coins/images/279/standard/ethereum.png?1696501628'),
                        ),
                      ),
                    ),


                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown, child: Text('Ethereum',
                              style: TextStyle(color: Colors.grey[900],
                                fontSize: 25, fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),
                            Text(
                              'ETH', style: TextStyle(color: Colors.grey[900], fontSize: 20,
                            ),),],),),),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('\$ 1,802.79', style: TextStyle(
                            color: Colors.grey[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),),
                          Text('-2.6%', style: TextStyle(
                            color: Colors.red[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),)],),
                    ),
                  ],
                ),),),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(height: 100,
                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey[500], offset: Offset(4, 4), blurRadius: 10, spreadRadius: 1,
                      ),
                      BoxShadow(color: Colors.white, offset: Offset(-4, -4),
                        blurRadius: 10, spreadRadius: 1,
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: Colors.grey[500], offset: Offset(4, 4),
                            blurRadius: 2, spreadRadius: 1,),
                            BoxShadow(color: Colors.white, offset: Offset(-1, -1), blurRadius: 2, spreadRadius: 1,
                            ),
                          ],
                        ),
                        height: 150, width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.network('https://assets.coingecko.com/coins/images/325/standard/Tether.png?1696501661'),
                        ),
                      ),
                    ),


                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown, child: Text('Tether',
                              style: TextStyle(color: Colors.grey[900],
                                fontSize: 25, fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),
                            Text(
                              'USDT', style: TextStyle(color: Colors.grey[900], fontSize: 20,
                            ),),],),),),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('US\$ 1,00', style: TextStyle(
                            color: Colors.grey[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),),
                          Text('0.0%', style: TextStyle(
                            color: Colors.green[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),)],),
                    ),
                  ],
                ),),),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(height: 100,
                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey[500], offset: Offset(4, 4), blurRadius: 10, spreadRadius: 1,
                      ),
                      BoxShadow(color: Colors.white, offset: Offset(-4, -4),
                        blurRadius: 10, spreadRadius: 1,
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: Colors.grey[500], offset: Offset(4, 4),
                            blurRadius: 2, spreadRadius: 1,),
                            BoxShadow(color: Colors.white, offset: Offset(-1, -1), blurRadius: 2, spreadRadius: 1,
                            ),
                          ],
                        ),
                        height: 150, width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.network('https://assets.coingecko.com/coins/images/6319/standard/usdc.png?1696506694'),
                        ),
                      ),
                    ),


                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown, child: Text('USDC',
                              style: TextStyle(color: Colors.grey[900],
                                fontSize: 25, fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),
                            Text(
                              'USDC', style: TextStyle(color: Colors.grey[900], fontSize: 20,
                            ),),],),),),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('US\$ 0,999818', style: TextStyle(
                            color: Colors.grey[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),),
                          Text('-0.1%', style: TextStyle(
                            color: Colors.red[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),)],),
                    ),
                  ],
                ),),),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(height: 100,
                decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.grey[500], offset: Offset(4, 4), blurRadius: 10, spreadRadius: 1,
                      ),
                      BoxShadow(color: Colors.white, offset: Offset(-4, -4),
                        blurRadius: 10, spreadRadius: 1,
                      ),
                    ]
                ),
                child: Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: Colors.grey[500], offset: Offset(4, 4),
                            blurRadius: 2, spreadRadius: 1,),
                            BoxShadow(color: Colors.white, offset: Offset(-1, -1), blurRadius: 2, spreadRadius: 1,
                            ),
                          ],
                        ),
                        height: 150, width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.network('https://assets.coingecko.com/coins/images/825/standard/bnb-icon2_2x.png?1696501970'),
                        ),
                      ),
                    ),


                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown, child: Text('BNB',
                              style: TextStyle(color: Colors.grey[900],
                                fontSize: 25, fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),
                            Text(
                              'BNB', style: TextStyle(color: Colors.grey[900], fontSize: 20,
                            ),),],),),),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('US\$ 227,64', style: TextStyle(
                            color: Colors.grey[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),),
                          Text('0.0%', style: TextStyle(
                            color: Colors.green[900], fontSize: 20, fontWeight: FontWeight.bold,
                          ),)],),
                    ),
                  ],
                ),),),

            SizedBox(height: 0,),
          ],
        ),
      ),
    );
  }
}

