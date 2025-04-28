import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:note_app1/application/app.dart';
import 'package:note_app1/data_show_screen.dart';
import 'firebase_options.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const NoteApp1());
}



class HomePage extends StatelessWidget {
   HomePage({super.key});
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(onPressed: (){
            firestore.collection("users").doc("01").set({
              "userName":"DarusEmon",
              "age":"27",
              "class" : "16",
            }).then((value)=> print("Data Added"))
                .catchError((error) => print("Failed to add user: $error"));
          }, child: const Text("Set data"),),



          ElevatedButton(onPressed: (){
            firestore.collection("restoreusers").doc("02").set({
              "userName":"DarusEmon",
              "age":"27",
              "class" : "16",
            }).then((value)=>print("Data Restore"))
                .catchError((error)=>print("Failed to restore data : $error"));
          }, child: Text("Data restore")),

          ElevatedButton(onPressed: (){
            firestore.collection("extra").add({
              "userName":"Darul karar",
              "age":"18",
              "class" : "10",
            }).then((value)=> print("Data Added"))
                .catchError((error) => print("Failed to add user: $error"));
          }, child: Text("Add data"),),
          
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DataShowScreen()));
          }, child: Text("Next_Screen"))
        ],
      )
      ),
    );
  }
}


