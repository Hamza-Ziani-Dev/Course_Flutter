// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

// Widget StatefullWidget
class TextFormFields extends StatefulWidget {
  const TextFormFields({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TextFormFieldsState();
  }
}

class TextFormFieldsState extends State<TextFormFields> {
  // ignore: prefer_typing_uninitialized_variables
  var username;
  var email;
  var password;

  // ignore: unnecessary_new
  GlobalKey<FormState> FormKeyState = new GlobalKey<FormState>();

  // Function Send
  send() {
    var data = FormKeyState.currentState;
    if (data!.validate()) {
        data.save();
      // ignore: avoid_print
      print("Username : $username");
    } else {
      // ignore: avoid_print
      print("Not Valider");
    }
  }

  // TextEditingController name = new TextEditingController();
  // TextEditingController email = new TextEditingController();
  // TextEditingController password = new TextEditingController();



  @override
  void initState() {
    //code
    // default
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextForms"),
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
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: FormKeyState,
        child: Column(children: [
          Container(
            child: TextFormField(
              onSaved: (text) {
                username:text;
              },
              validator: (text) {
                if (text!.length == null) {
                  return "Value Not Null";
                }
                if (text.length == 4) {
                  return "Length Equals Four";
                }
                return null;
              },
              // onEditingComplete: (){
              //     print("Complated");
              // },
              onChanged: (username) {
                setState(() {
                  username:
                  username;
                  print(username);
                });
              },
              //controller: username,
              //initialValue: "Hamza",
              // cursorColor: Colors.green,
              // cursorWidth: 10,
              // maxLength: 10,
              // maxLines: 1, // default
              // textAlign: TextAlign.start, // default
              /*  decoration: InputDecoration(
                //prefixIcon: const Icon(Icons.access_alarm_outlined),
                //icon: const Icon(Icons.access_alarm),
                //hintText: "Enter Name",
                //labelText: "Enter Name ",
                //filled: true,
                //enabled: false,
                /*enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 3,
                  ),
                ),*/
                /*focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 3,
                    ),
                 ),*/
              ),*/
            ),
          ),
          //Text("Username : $username"),
          // Container(
          //   child: TextFormField(
          //     onChanged: (email){
          //         setState(() {
          //           email : email;
          //         });
          //     },
          //     //controller: email,
          //     //initialValue: "Hamza@gmail.com",
          //     // maxLength: 10,
          //     // minLines: 1, // default
          //     // textAlign: TextAlign.start,
          //   ),
          // ),
          //Text("Email : $email"),
          // Container(
          //   child: TextFormField(
          //     onChanged: (password){
          //         setState(() {
          //           password: password;
          //         });
          //     },
          //   //  controller: password,
          //     //initialValue: "Hamza123",
          //     // maxLength: 10,
          //     // minLines: 1,
          //     // obscureText: true,
          //     // textAlign: TextAlign.start, // default
          //     // textInputAction: TextInputAction.done,
          //   ),
          // ),
          ElevatedButton(
            onPressed: send,
            child: const Text("Send"),
          ),
          //Text("Password : $password"),
        ]),
      ),
    );
  }
}

// PageView + Loop = PageViewBuilder
// ListView + Loop = ListViewBuilder
