import 'package:author_search_app/api/search_Requests.dart';
import 'package:flutter/material.dart';

import '../model/author_search_model.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final _controller = TextEditingController();

  List<AuthorSearchModel> author_search_list = [
    AuthorSearchModel("J.R.R. Tolkien", "OL26320A", "3 January 1892", "The Hobbit"),
    AuthorSearchModel("J. K. Rowling", 	"OL23919A", "31 July 1965", "Harry Potter and the Philosopher's Stone")
  ];
  
  void updateList(controller){
    //planned to use api to update list
    // final SearchRequests searchRequests = SearchRequests();
    // searchRequests.get_author(_controller.text);

  //  static List usage for Testing

  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("author search"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: TextField(
                style: TextStyle(fontSize: 24),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search for an author",

                ),
                controller: _controller,
                onSubmitted: (controller) => updateList(_controller),
              ),
            ),
            SizedBox(height: 20),
            Expanded(child: ListView.builder(
              itemCount: author_search_list.length,
              itemBuilder: (context,index) {
                return ListTile(
                    // authorSearchModel: author_search_list[index] //Dunno why not work
                );
              }
            ))
          ],

        ),
      )

      );
  }
}