import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:myapp/Widgets/project_list.dart';
import 'package:myapp/Widgets/project_card.dart';
import 'package:myapp/Widgets/my_drawer.dart';
import 'package:myapp/models/project.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyProfile'),
      ),
      drawer: MyDrawer(),
      body: Builder(builder: (BuildContext ctx) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
                _Banner(
                  title: 'Discover my Amazing\nArt Space!',
                  secondaryTitle: 'I build Chat app with dark and light',
                ),
                // ignore: avoid_unnecessary_containers
                // Container(
                //   child:
                //   GridView(
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                //     children: [
                //       _Description(title: "119K+", description: "Subscribers"),
                //       _Description(title: "40+", description: "Videos"),
                //       _Description(title: "30+", description: "Projects"),
                //       _Description(title: "13K+", description: "Stars"),
                //     ],
                //   ),
                // ),
                // ignore: avoid_unnecessary_containers
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Projects",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/project');
                        },
                        child: ProjectCard(
                          project: Project(
                            title: "E-Commerce Complate App-Flutter UI",
                            description: "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator."
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      ProjectCard(
                        project: Project(
                            title: "E-Commerce Complate App-Flutter UI",
                            description:
                                "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator."),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _Description extends StatelessWidget {
  String title = "";
  String description = "";

  _Description({
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(title), Text(description)],
    );
  }
}

class _Banner extends StatelessWidget {
  String title;
  String secondaryTitle;

  _Banner({
    required this.title,
    required this.secondaryTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 140,
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Theme.of(context).primaryColor.withOpacity(0.8), BlendMode.darken),
          image: AssetImage('assets/bg.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20
          ),
          Text(
            secondaryTitle,
            style: TextStyle(
              fontSize: 16
            ),
          )]),
    );
  }
}
