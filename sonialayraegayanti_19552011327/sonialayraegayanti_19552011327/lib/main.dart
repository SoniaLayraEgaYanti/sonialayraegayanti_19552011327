import 'package:flutter/material.dart';
import 'package:sonialayraegayanti_19552011327/pages/main_page.dart';

void main(){
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MainPage(),
    );
  }}

