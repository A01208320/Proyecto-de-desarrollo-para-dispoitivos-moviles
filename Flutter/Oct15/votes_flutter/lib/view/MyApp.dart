import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voring Application',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vote for a project'),
        ),
        body: ListView(

        ),
      ),
    );
  }
}
