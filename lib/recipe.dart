class Recipe {
  String title = 'dummy';
  String ingredients = 'dummy';
  String instructions = "dummy";
  String numServing = "dummy";

  Recipe({
    required this.title,
    required this.ingredients,
    required this.instructions,
    required this.numServing,
  });
  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      title: json['title'] as String,
      ingredients: json['ingredients'] as String,
      instructions: json['instructions'] as String,
      numServing: json['servings'] as String,
    );
  }
  static List<Recipe> detailFromSnapshot(List snap) {
    List<Recipe> temper = [];

    temper = snap.map((data) {
      return Recipe.fromJson(data);
    }).toList();
    // return temper;
    return temper;
  }
}
