import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Data {
  String name;
  int percent;

  Data({ required this.name, required this.percent });
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
      children: [
        Container(
          height: 300,
          color: Color(0xff242430),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 66,
                backgroundImage: AssetImage('assets/jjh.jpg'),
                backgroundColor: Colors.white,
              ),
              SizedBox(height: 20),
              Text('Abu Anwar'),
              SizedBox(height: 10),
              Text(
                'Flutter Developer & Founder of\n The Flutter Way',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF82828A),
                  fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Residence:'),
                  Text(
                    'Bangladesh',
                    style: TextStyle(
                      color: Color(0xFF82828A),
                    ),
                  )
                ]
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('City:'),
                  Text(
                    'Dhaka',
                    style: TextStyle(
                      color: Color(0xFF82828A),
                    ),
                  )
                ]),
              SizedBox(height: 12),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Age:'),
                Text(
                  '22',
                  style: TextStyle(
                    color: Color(0xFF82828A),
                  ),
                )
              ])
            ],
          ),
        ),
        _Divider(),
        Container(
          padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
          child: Column(
            children: [
              Text('Skills'),
              Row(
                children: [
                  _chartColumn(title: "Flutter", percent: 80),
                  _chartColumn(title: "Django", percent: 72),
                  _chartColumn(title: "Firebase", percent: 65),
                ],
              )
            ],
          ),
        ),
        _Divider(),
        Container(
          padding: EdgeInsets.fromLTRB(20, 24, 20, 0),
          child: Column(
            children: [
              Text('Coding'),
              _BarChartColumn(title: "Flutter", percent: 80),
              _BarChartColumn(title: "Django", percent: 72),
              _BarChartColumn(title: "Firebase", percent: 65),
            ],
          ),
        ),
      ],
    ));
  }
}

class _BarChartColumn extends StatelessWidget {
  String title;
  int percent;

  _BarChartColumn({
    required this.title,
    required this.percent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [
            Text("Dart"),
            Text("70%"),
          ],),
          SfCartesianChart(series: <ChartSeries>[
          // Renders bar chart
          BarSeries<Data, double>(
              dataSource: [
                Data(name: this.title, percent: percent),],
              xValueMapper: (Data data, _) => 2,
              yValueMapper: (Data data, _) => data.percent)
        ])

          // LinearPercentIndicator(
          //   width: 100.0,
          //   lineHeight: 8.0,
          //   percent: 0.3,
          //   progressColor: Theme.of(context).accentColor,
          // ),
          
        ]
      ),
    );
  }
}

class _chartColumn extends StatelessWidget {
  String title;
  int percent;

  _chartColumn({
    required this.title,
    required this.percent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            width: 120,
            height: 120,
            child: 
            // CircularPercentIndicator(
            //   radius: 60.0,
            //   lineWidth: 5.0,
            //   percent: percent / 100,
            //   center: Text(percent as String),
            //   progressColor: Theme.of(context).accentColor,
            // ),
            SfCircularChart(palette: [
              Theme.of(context).accentColor,
              Color(0xff1e1e28),
            ], series: <CircularSeries>[
              DoughnutSeries<Data, String>(
                  dataSource: [
                    Data(name: "Flutter", percent: percent),
                    Data(name: "Flutter", percent: 100- percent),
                  ],
                  xValueMapper: (Data data, _) => data.name,
                  yValueMapper: (Data data, _) => data.percent,
                  dataLabelSettings:
                      DataLabelSettings(isVisible: true),
                  enableTooltip: true)
            ]),
          ),
        Text(title)
      ]
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Color(0xFF82828A),
      height: 40,
      indent: 20,
      endIndent: 20,
    );
  }
}
