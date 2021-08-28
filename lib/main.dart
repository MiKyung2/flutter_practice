import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mayple',
      theme: ThemeData(
        fontFamily: 'Noto_Serif_KR',
      ),
      home: Mayple(),
    );
  }
}

class Mayple extends StatelessWidget {
  const Mayple({ Key? key }) : super(key: key);

  final double commonPadding = 20.0;

  Widget _featureBox({context: BuildContext, title: String, description: String}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: Colors.grey
      )),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            commonPadding, 10.0, commonPadding, 10.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: const [
            Text('EXPERIENCE',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.blueGrey)
            ),
            SizedBox(
              height: 10,
            ),
            Text('8 years',
              style: TextStyle(
                fontSize: 16.0,
              )
            ),
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'mayple',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Color(0xffF7F1E8),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(
              Icons.menu,
              color: Colors.redAccent,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child:  Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/jjh.jpg"), 
                  fit: BoxFit.contain
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(commonPadding),
                child:
                  Text("Find your industry's\ntop vetted marketing\nexperts",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    )),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(commonPadding),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Stefan Garlson',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                            SizedBox(
                              height: 14,
                            ),
                            Row(children: const [
                              Text(
                                '4.8',
                                style: TextStyle(
                                  color: Colors.redAccent, fontSize: 18),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 2),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.redAccent,
                                )),
                              Padding(
                                padding: EdgeInsets.only(right: 2),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.redAccent,
                                )),
                              Padding(
                                  padding: EdgeInsets.only(right: 2),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.redAccent,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(right: 2),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.redAccent,
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(right: 2),
                                  child: Icon(
                                    Icons.star_half,
                                    color: Colors.redAccent,
                                  ))
                            ])
                          ]
                        )
                      ],
                    ),
                  )
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          _featureBox(
                            context: context,
                            title: 'MARKETING EXPERTISE:', 
                            description: 'Tech expert'
                          ),
                          _featureBox(
                            context: context,
                            title: 'EXPERIENCE',
                            description: '8 years'
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          _featureBox(
                            context: context,
                            title: 'WORKED WITH:',
                            description: 'Jolt, Monday,\nSalesforce'
                          ),
                          _featureBox(
                            context: context,
                            title: 'AVG, INCREASE IN SALES:',
                            description: '+146%'
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
