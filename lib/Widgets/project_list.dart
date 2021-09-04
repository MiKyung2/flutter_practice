import 'package:flutter/material.dart';

import 'package:myapp/Widgets/project_card.dart';
import 'package:myapp/models/project.dart';

class ProjectList extends StatelessWidget {
  final List<Project> projectList = [
    Project(title: "E-Commerce Complate App-Flutter UI", description: "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator."),
    Project(title: "E-Commerce Complate App-Flutter UI", description: "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator."),
    Project(title: "E-Commerce Complate App-Flutter UI", description: "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator."),
    Project(title: "E-Commerce Complate App-Flutter UI", description: "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator."),
  ];

  ProjectList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView.builder(
        itemCount: projectList.length,
        // itemBuilder: (BuildContext context, int index) => projectCard(index, projectList[index])
        itemBuilder: (BuildContext context, int index) {
          // ignore: avoid_unnecessary_containers
          return ProjectCard(project: projectList[index]);
        },
      ),
    );
  }
}

