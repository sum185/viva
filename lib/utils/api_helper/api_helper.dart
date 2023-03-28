import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:viva/screen/model/NewsModel.dart';

class Api_Helper
{
  Api_Helper._();
  static Api_Helper api_helper = Api_Helper._();

  Future<NewsModel?> getApi()
  async {
    String apiLink = "https://newsapi.org/v2/everything?q=tesla&from=2023-02-28&sortBy=publishedAt&apiKey=3eac0869045e4100bea193d18d9019c4";
    var response = await http.get(Uri.parse(apiLink));
    print('booo');

    if(response.statusCode==200){
      var json =jsonDecode(response.body);
      return NewsModel.fromJson(json);
    }
    return null;
  }


}