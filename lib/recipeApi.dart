import 'dart:convert';
import 'package:assignment/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getDetail(String search) async {
    var uri =
        Uri.https('yummly2.p.rapidapi.com', '/v1/recipe', {"query": search});
    final response = await http.get(uri, headers: {
      "X-RapidAPI-Key": "836c9e03d9msh1848ac2cb56020fp15c069jsn756eaab9b02d",
      "X-RapidAPI-Host": "recipe-by-api-ninjas.p.rapidapi.com",
      "useQueryString": "true"
    });

    List data = jsonDecode(response.body);

    return Recipe.detailFromSnapshot(data);
  }
}
