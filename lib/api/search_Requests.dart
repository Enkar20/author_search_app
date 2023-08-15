import 'dart:io';

import 'package:author_search_app/model/author_search_model.dart';
import 'package:author_search_app/util/parser/json_to_author_search.dart';
import 'package:http/http.dart' as http;

class SearchRequests{
  String? author;




  get_author(String author) async {
    var url = Uri.https('openlibrary.org', 'search/authors.json?q=$author');
    var response = await http.get(url);
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    print(JsonToAuthorSearch.fromJson(response));

    // AuthorSearchModel authorSearchModel = AuthorSearchModel(JsonToAuthorSearch.fromJson(response) as String);

    return response;
  }





}
// https://openlibrary.org/search/authors.json?q=j%20k%20rowling
