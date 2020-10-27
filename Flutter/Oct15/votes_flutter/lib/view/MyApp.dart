import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  List<String> lista=['nombre1', 'nombre2', 'nombre3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voring Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vote for a project'),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Project').snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData) return Text('Loading');
            if(snapshot.data.documents.length==0){
              return Center(
              child: Text('No documents'),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (BuildContext context, int index){
                DocumentSnapshot data =snapshot.data.documents(index);
                return ListTile(
                  title: Text(
                    data['project_name'],
                  ),
                  subtitle: Text(
                    data['author'],
                  ),
                  trailing: Text(
                    data['votes'].toString(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
