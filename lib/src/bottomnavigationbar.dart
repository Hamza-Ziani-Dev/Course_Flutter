import 'package:flutter/material.dart';


// Widget StatefullWidget
class BottomNavigationBars extends StatefulWidget{
  const BottomNavigationBars({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState(){
    return BottomNavigationBarsState();
  }
}

class BottomNavigationBarsState extends State<BottomNavigationBars>{
 int selectedindex = 0;
 List <Widget>  WidgetPages = [
   const Text("Hamza", style: TextStyle(fontSize: 20),),
      const Text("Noha", style: TextStyle(fontSize: 20),),
         const Text("Aya", style: TextStyle(fontSize: 20),),
 ];
  @override
  void initState() {
    //code
    
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBars"),
        centerTitle: true,
        
      ),
        bottomNavigationBar  :  BottomNavigationBar(
          currentIndex: selectedindex,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
             BottomNavigationBarItem(label: "Widget One",icon: Icon(Icons.zoom_out),),
             BottomNavigationBarItem(label: "Widget Two",icon: Icon(Icons.add),),
             BottomNavigationBarItem(label: "Widget Three",icon: Icon(Icons.five_g),),

          ],
          backgroundColor: Colors.indigo,
          onTap: (index){
            setState((){
             selectedindex = index;
            });
          },
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.red,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
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
      body: WidgetPages.elementAt(selectedindex),

    );
  }
}