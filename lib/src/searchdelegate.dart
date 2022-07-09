// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, unnecessary_string_interpolations, unused_label
import 'package:flutter/material.dart';

// Widget StatefullWidget
class SearchDelegates extends StatefulWidget {
  const SearchDelegates({Key? key}) : super(key: key);

  State<StatefulWidget> createState() {
    return SearchDelegatesState();
  }
}

class SearchDelegatesState extends State<SearchDelegates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              }),
        ],
        title: Text("SearchDelegates"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Container(child: Column()),
    );
  }
}

class DataSearch extends SearchDelegate {
  List Colors = ["Red", "Green", "Blue", "Orange"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            query = "";
          }),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
    // ignore: dead_code
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text("$query",style: TextStyle(fontSize: 25),));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterColors = //Colors.where((element) => element.startsWith(query)).toList();
        Colors.where((element) => element.contains(query)).toList();
    return ListView.builder(
        itemCount: query == "" ? Colors.length : filterColors.length,
        itemBuilder: ((context, i) {
          return InkWell(
            onTap: (){
              query =  query == "" ? Colors[i] : filterColors[i];
              showResults(context);
            },
          );
          // ignore: dead_code
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              query == "" ? "${Colors[i]}" : "${filterColors[i]}",
              style: TextStyle(fontSize: 25),
            ),
          );
        }));
  }
}
