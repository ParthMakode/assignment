import 'package:assignment/recipeApi.dart';
import 'package:flutter/material.dart';
import 'recipeWidget.dart';
import 'recipe.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Recipe> recipelist = [];
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    recipelist = await RecipeApi.getDetail('pasta');
    setState(() {
      isloading = false;
      print(recipelist);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Food Recipe')),
          elevation: 10,
        ),
        body: isloading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: recipelist.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'detail', arguments: {
                        'title': recipelist[index].title,
                        'ingredients': recipelist[index].ingredients,
                        'instructions': recipelist[index].instructions,
                        'servings': recipelist[index].numServing,
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                              height: 130,
                              child: RecipeCard(
                                title: recipelist[index].title,
                                servings: recipelist[index].numServing,
                              )),
                        ],
                      ),
                    ),
                  );
                }));
  }
}
