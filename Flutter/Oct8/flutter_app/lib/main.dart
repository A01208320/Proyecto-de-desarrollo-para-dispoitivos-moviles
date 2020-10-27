import 'package:flutter/material.dart';

void main(){
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'New App',
      home: NewWidget(),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Class'),
        elevation: 0.5,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle, size: 50,),
            title: Text(
                'person1',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
            ),
            subtitle: Text('Company1'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('person2'),
            subtitle: Text('Company2'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}