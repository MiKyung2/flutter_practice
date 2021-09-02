import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

const mainColor = 0xffF7F1E8;

class Mayple extends StatelessWidget {
  const Mayple({Key? key}) : super(key: key);

  final double commonPadding = 20.0;

  Widget _featureBox(
      {context = BuildContext, title = String, description = String}) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.50,
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
        child: Padding(
          padding:
              EdgeInsets.fromLTRB(commonPadding, 10.0, commonPadding, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('EXPERIENCE',
                  style: TextStyle(fontSize: 12.0, color: Colors.blueGrey)),
              SizedBox(
                height: 10,
              ),
              Text('8 years',
                  style: TextStyle(
                    fontSize: 16.0,
                  )),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'mayple',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.redAccent),
        backgroundColor: Color(mainColor),
        elevation: 0.0,
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/jjh.jpg'),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/img1.jpg"),
              )
            ],
            accountName: Text(
              '전지현',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              'jjh@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
            onDetailsPressed: () {
              print('arrow is clicked');
            },
            decoration: BoxDecoration(
                color: Color(mainColor),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0))),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.grey[850]),
            title: Text('Home'),
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => SecondPage()));
              Navigator.pushNamed(context, '/second');
              print('Home is cliked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.grey[850]),
            title: Text('Setting'),
            onTap: () {
              print('Setting is cliked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.question_answer, color: Colors.grey[850]),
            title: Text('Q&A'),
            onTap: () {
              print('Q&A is cliked');
            },
            trailing: Icon(Icons.add),
          )
        ],
      )),
      body: Builder(builder: (BuildContext ctx) {
        return Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(commonPadding),
                  child: Column(
                    children: [
                      Text(
                          "Find your industry's\ntop vetted marketing\nexperts",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          )),
                      GestureDetector(
                        onTap: () {
                          Scaffold.of(ctx)
                              .showSnackBar(SnackBar(content: Text("Hello")));
                        },
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                              Color(0xFFF7F1E8), BlendMode.darken),
                          child: Image.asset(
                            'assets/jjh.jpg',
                          ),
                        ),
                        // Image.asset(
                        //   'assets/jjh.jpg',
                        //   fit: BoxFix.,
                        // ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
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
                                            color: Colors.redAccent,
                                            fontSize: 18),
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
                                  ])
                            ],
                          ),
                        )),
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              _featureBox(
                                  context: context,
                                  title: 'MARKETING EXPERTISE:',
                                  description: 'Tech expert'),
                              _featureBox(
                                  context: context,
                                  title: 'EXPERIENCE',
                                  description: '8 years'),
                            ],
                          ),
                          Row(
                            children: [
                              _featureBox(
                                  context: context,
                                  title: 'WORKED WITH:',
                                  description: 'Jolt, Monday,\nSalesforce'),
                              _featureBox(
                                  context: context,
                                  title: 'AVG, INCREASE IN SALES:',
                                  description: '+146%'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        );
      }),
    );
  }
}
