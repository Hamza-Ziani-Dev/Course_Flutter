// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, unnecessary_string_interpolations, unused_label, unnecessary_new
import 'package:flutter/material.dart';

// Widget StatefullWidget
class ContainerScroll extends StatefulWidget {
  const ContainerScroll({Key? key}) : super(key: key);

  State<StatefulWidget> createState() {
    return ContainerScrollState();
  }
}

class ContainerScrollState extends State<ContainerScroll> {
  late ScrollController sc;
  var _valSlider = 0.0;

  @override
  void initState() {
    sc = new ScrollController();
    sc.addListener(() {
      print(sc.offset);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ContainerScroll"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: ListView(
        controller: sc,
        children: [
          ElevatedButton(onPressed: (){
            sc.jumpTo(sc.position.maxScrollExtent);
          }, child: Text("Go To Button")),

          ...List.generate(20, (index) => 
          Container(
            child: Text("Container : $index"),
            height: 100,
            width: 380,
            color: index.isEven ? Colors.green : Colors.red,
            margin: EdgeInsets.all(20),

            
          ),),
          ElevatedButton(onPressed: (){
            //sc.jumpTo(sc.position.minScrollExtent);
            sc.animateTo(100, duration: Duration(seconds: 1), curve: Curves.easeIn);
          }, child: Text("Go To Top")),
        ],
      ),
    );
  }
}
