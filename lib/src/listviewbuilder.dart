// ignore_for_file: unnecessary_new
import 'package:flutter/material.dart';

// Widget StatefullWidget
class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  State<StatefulWidget> createState() {
    return ListViewBuilderState();
  }
}

class ListViewBuilderState extends State<ListViewBuilder> {
  List moblies = [
    {"name": "Nokia", "screen": "6.2", "cpu": "8 core"},
    {"name": "Oppo", "screen": "6.2", "cpu": "9 core"},
    {"name": "Ultra 8", "screen": "9.2", "cpu": "4 core"},
    {"name": "Hewawi", "screen": "6.2", "cpu": "01"},
  ];
  List users = ["Hamza", "Siham", "Ali", "Rachid", "Noha", "Aziz"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewBuilder "),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                print("Home");
              },
            ),
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.dehaze),
              onTap: () {
                print("About");
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: const Icon(Icons.contact_page),
              onTap: () {
                print("Contact");
              },
            ),
            ListTile(
              title: const Text("Help"),
              leading: const Icon(Icons.help),
              onTap: () {
                print("Help");
              },
            ),
            ListTile(
              title: const Text("Logout"),
              leading: const Icon(Icons.logout),
              onTap: () {
                print("Logout");
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.custom(
            childrenDelegate: SliverChildBuilderDelegate(
                    (context, i){
                  return Container(
                      margin: const EdgeInsets.all(10),
                      child: Text("${users[i]}",),
                      color: Colors.green,
                      height:100
                  );
                  childCount:users.length;
                })) ,
      ),

      /*  body: Container(
        child: ListView.separated(
          separatorBuilder: (context, i){
             return const Divider(color: Colors.red, height: 2, thickness: 2,);
          },
          itemCount: moblies.length,
          itemBuilder: (context, i) {
              return ListTile(
                title: Text(" title : ${moblies[i]["name"]}",),
                subtitle: Text(" subtitle : ${moblies[i]["screen"]}"),
                trailing: Text("${moblies[i]["cpu"]}"),
              );
          }),
      ),*/


      /*  body: Container(
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(" title : ${moblies[i]["name"]}",),
                subtitle: Text(" subtitle : ${moblies[i]["screen"]}"),
                trailing: Text("${moblies[i]["cpu"]}"),
              );
            }),
      ),*/
    );
  }
}
