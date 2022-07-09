// ignore_for_file: unnecessary_new
import 'package:flutter/material.dart';

// Widget StatefullWidget
class TapBars extends StatefulWidget {
  const TapBars({Key? key}) : super(key: key);

  State<StatefulWidget> createState() {
    return TapBarsState();
  }
}

class TapBarsState extends State<TapBars> with SingleTickerProviderStateMixin {

  late TabController mycontroller;

  @override
  void initState() {
    mycontroller = new TabController(length: 4, vsync: this);
    super.initState();
  }
  List users = ["Hamza", "Siham", "Ali", "Rachid", "Noha", "Aziz"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Demo TapBars"),
        centerTitle: true,
        bottom: TabBar(
            controller: mycontroller,
            isScrollable: true,
            indicatorColor: Colors.amber,
            indicatorWeight: 10,
            tabs: [
              Tab(
                child:const Text("Widget One"),
                icon: Icon(Icons.ac_unit),
              ),
              Tab(
                child:const Text("Widget Two"),
                icon: Icon(Icons.archive),
              ),
              Tab(
                child:const Text("Widget Three"),
                icon: Icon(Icons.access_alarm),
              ),
              Tab(
                child:const Text("Widget Four"),
                icon: Icon(Icons.arrow_drop_up),
              ),
            ]),
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
        child: TabBarView(
          controller: mycontroller,
          children: [
            Container(
              width: double.infinity,
              child:const Text("Container One"),
              color: Colors.green,
            ),
            Container(
              width: double.infinity,
              child:const Text("Container Two"),
              color : Colors.red,
            ),
            const Text("This Is Text One"),
            Container(
              width: double.infinity,
              child:const Text("Container Four"),
              color : Colors.indigo,
            )

          ],
        ),
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
