import 'package:flutter/material.dart';

// Widget StatefullWidget
class PageViews extends StatefulWidget {
  const PageViews({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PageViewsState();
  }
}

class PageViewsState extends State<PageViews> {
  int selectedindex = 0;
  late PageController count;
  List images = [
    {"url" : "images/image.jpg"},
    {"url" : "images/laptop.jpg"},
    {"url" : "images/youtuber.jpg"},
    {"url" : "images/1.jpg"},
  ];
  List<Widget> WidgetPages = [
    const Text(
      "Hamza",
      style: TextStyle(fontSize: 20),
    ),
    const Text(
      "Noha",
      style: TextStyle(fontSize: 20),
    ),
    const Text(
      "Aya",
      style: TextStyle(fontSize: 20),
    ),
  ];
  @override
  void initState() {
    //code
     count = new PageController(initialPage: 0); // default
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBars"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            label: "Widget One",
            icon: Icon(Icons.zoom_out),
          ),
          const BottomNavigationBarItem(
            label: "Widget Two",
            icon: Icon(Icons.add),
          ),
          const BottomNavigationBarItem(
            label: "Widget Three",
            icon: Icon(Icons.five_g),
          ),
        ],
        backgroundColor: Colors.indigo,
        onTap: (index) {
          setState(() {
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
      body: Center(
        child: Column(children: [
        /*  Container(
            margin: const EdgeInsets.all(20),
            height: 200,
            child: PageView(
              controller: count,
              children: [
                Image.asset("images/image.jpg", fit: BoxFit.fill,),
                Image.asset("images/laptop.jpg", fit: BoxFit.fill,),
                Image.asset("images/youtuber.jpg", fit: BoxFit.fill,),
              ],
            ),
          ),*/
          Container(
            height: 200,
            margin: const EdgeInsets.all(10),
            child: PageView.builder(
              controller: count,
              itemCount: images.length,
              itemBuilder: (context, i) {
              return Image.asset(images[i]['url']);
            },),
          ),
          ElevatedButton(onPressed:(){
           count.jumpToPage(2);
          }, child:const Text("Images Three"),),
        ]),
      ),
    );
  }
}


// PageView + Loop = PageViewBuilder
// ListView + Loop = ListViewBuilder