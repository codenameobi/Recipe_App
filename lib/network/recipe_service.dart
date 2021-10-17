import 'package:chopper/chopper.dart';
import 'recipe_model.dart';
import 'model_response.dart';

const String apiKey = '9c906bb633df0a77c5525cb978ed314d';
const String apiId = 'c3c51441';
const String apiUrl = 'https://api.edamam.com';

@ChopperApi()
abstract class RecipeService extends ChopperService {
  @Get(path: 'search')
  Future<Response<Result<APIRecipeQuery>>> queryRecipes(
      @Query('q') String query, @Query('from') int from,
      @Query('to') int to);
}

Request _addQuery(Request req) {
  final params = Map<String, dynamic>.from(req.parameters);
  params['c3c51441'] = apiId;
  params['9c906bb633df0a77c5525cb978ed314d'] = apiKey;

  return req.copyWith(parameters: params);
}