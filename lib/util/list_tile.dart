import 'package:author_search_app/model/author_search_model.dart';
import 'package:author_search_app/model/book_author_model.dart';
import 'package:flutter/material.dart';

class AuthorListTile extends StatelessWidget{

AuthorSearchModel authorSearchModel;

  AuthorListTile(
      this.authorSearchModel, {super.key}
      );

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
    child: Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(authorSearchModel.name),
          Text(authorSearchModel.idKey),
          Text(authorSearchModel.birthday),
          Text(authorSearchModel.topWork),
        ],
      ),
    )

    );

  }
}