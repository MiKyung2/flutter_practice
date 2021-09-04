import 'package:flutter/material.dart';

import 'package:myapp/models/project.dart';

class ProjectCard extends StatelessWidget {
  Project project;

  ProjectCard({
    required this.project,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.topLeft,
      color: Theme.of(context).primaryColorLight,
      padding: EdgeInsets.fromLTRB(20, 24, 20, 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title as String,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 14),
          Text(
            project.description as String,
            maxLines: 2, // you can change it accordingly
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF7F7F87),
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Read More >>",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).accentColor
            ),
          )
        ],
      ),
    );
  }
}
