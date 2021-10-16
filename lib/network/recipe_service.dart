import 'package:http/http.dart';

const String apiKey = '9c906bb633df0a77c5525cb978ed314d';
const String apiId = 'c3c51441';
const String apiUrl = 'https://api.edamam.com/search';


Future getData(String url) async {
  print('calling url: $url');
  final response = await get(url);

  if (response.statusCode == 200) {
    return response.body;
  } else {
    print(response.statusCode);
  }
}

class RecipeService {

  Future<dynamic> getRecipes(String query, int from, int to)
  async {
    final recipeData = await getData( '$apiUrl?
        app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
    return recipeData;
  }
}