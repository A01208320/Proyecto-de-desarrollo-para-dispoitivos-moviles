import 'package:flutter/material.dart';
import 'package:votes_flutter/view/MyApp.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}