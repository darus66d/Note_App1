import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note_App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({super.key});
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(child: ElevatedButton(onPressed: (){
        firestore.collection("users").add({
          "userName":"DarusSalam",
          "age":"22",
          "class" : "1",
        }).then((value)=> print("Data Added"))
            .catchError((error) => print("Failed to add user: $error"));
      },
          child: Text("Add data")
      )
      ),
    );
  }
}


