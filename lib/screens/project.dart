import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReadMore"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Text(
                "E-Commerce Complate App-Flutter UI",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline1?.fontSize,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Color(0xFF82828A)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}