
import 'package:author_search_app/model/work_model.dart';

class BookAuthorModel{
  String name;
  String idKey;
  String birthday;
  WorkModel works;

  BookAuthorModel(
  this.name,
  this.idKey,
      this.birthday,
      this.works
);
}