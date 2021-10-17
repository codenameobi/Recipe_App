import 'package:http/http.dart';

const String apiKey = '9c906bb633df0a77c5525cb978ed314d';
const String apiId = 'c3c51441';
const String apiUrl = 'https://api.edamam.com/search';


Future getData(String url) async { // 2
  print('Calling url: $url'); // 3
  final response = await get(Uri.parse(url)); // 4
  if (response.statusCode == 200) { // 5
    return response.body;   } else {
// 6
    print(response.statusCode);   }
}

class RecipeService { // 1
  Future<dynamic> getRecipes(String query, int from, int to) async {
// 2
    final recipeData = await getData( '$apiUrl?'
        'app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to'); // 3
        return recipeData;   }
}