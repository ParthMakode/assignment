import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String servings;
  RecipeCard({
    required this.title,
    required this.servings,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        child: Column(children: [
          ListTile(
            leading: Icon(Icons.fastfood_outlined),
            title: Text(title),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_outlined),
            title: Text(servings),
          ),
        ]));
  }
}
