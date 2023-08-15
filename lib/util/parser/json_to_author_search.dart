
class JsonToAuthorSearch {
  String name;
  String idKey;
  String birthday;
  String topWork;

  JsonToAuthorSearch(
      this.name,
      this.idKey,
      this.birthday,
      this.topWork
      );

  factory JsonToAuthorSearch.fromJson(dynamic json){
    return JsonToAuthorSearch(json["docs"][0]["name"]as String ,
        json["docs"][0]["key"]as String,
        json["docs"][0]["birth_date"]as String,
        json["docs"][0]["top_work"]as String
    );
  }

  @override
  String toString(){
    return '{ ${this.name}, ${this.idKey},${this.birthday}, ${this.topWork} }';
  }

}