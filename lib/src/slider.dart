// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, unnecessary_string_interpolations, unused_label

import 'package:flutter/material.dart';

// Widget StatefullWidget
class Sliders extends StatefulWidget {
  const Sliders({Key? key}) : super(key: key);

  State<StatefulWidget> createState() {
    return SlidersState();
  }
}

class SlidersState extends State<Sliders> {
  var _valSlider = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Container(
          child: Column(
        children: [
          Slider(
            min: 0,
            max: 100,
            activeColor: Colors.green,
            inactiveColor: Colors.red,
            value: _valSlider, onChanged: (val) {
              setState(() {
                _valSlider = val;
              });
            }),
        ],
      )),
    );
  }
}
