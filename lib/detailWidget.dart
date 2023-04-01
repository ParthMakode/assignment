import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String ingredients;
  final String instructions;
  final String servings;
  DetailCard({
    required this.title,
    required this.ingredients,
    required this.servings,
    required this.instructions,
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
            leading: Icon(Icons.checklist_rtl),
            title: Text(ingredients),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_1_outlined),
            title: Text(servings),
          ),
          ListTile(
            leading: Icon(Icons.integration_instructions_outlined),
            title: Text(instructions),
          ),
        ]));
  }
}
