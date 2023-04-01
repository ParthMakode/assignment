import 'package:assignment/detailWidget.dart';
import 'package:flutter/material.dart';

class showDetails extends StatelessWidget {
  String title = 'dummy';
  String ingredients = 'dummy';
  String instructions = 'dummy';
  String servings = 'dummy';
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    if (args != null) {
      final title1 = args['title'];
      final ingredients1 = args['ingredients'];
      final instructions1 = args['instructions'];
      final servings1 = args['servings'];
      title = title1;
      ingredients = ingredients1;
      instructions = instructions1;
      servings = servings1;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("details"),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: DetailCard(
                  title: title,
                  ingredients: ingredients,
                  servings: servings,
                  instructions: instructions),
            ),
          )
        ],
      )),
    );
  }
}
