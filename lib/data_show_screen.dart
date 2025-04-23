import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class DataShowScreen extends StatelessWidget {
  const DataShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Show Screen"),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("users").snapshots(),
          builder: (BuildContext context,AsyncSnapshot<QuerySnapshot>sanpshots){

            if(sanpshots.hasError){
              return const Center(child: CircularProgressIndicator());
            }
            if(sanpshots.connectionState==ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              itemCount: sanpshots.data!.docs.length,
                itemBuilder: (context,index){

                var doc = sanpshots.data!.docs[index];

                return ListTile(
                  leading: IconButton(onPressed: (){
                    Clipboard.setData(ClipboardData(text: doc["userName"]));
                  }, icon:const Icon(Icons.copy) ),
                  title: Text("Name:${doc["userName"]}"),
                  subtitle: Text("age:${doc["age"]}"),
                  trailing: IconButton(onPressed: (){
                    Share.share('check out my website https://example.com');
                  }, icon: Icon(Icons.share)),
                );
                }
            );
          },
      ),
    );
  }
}
