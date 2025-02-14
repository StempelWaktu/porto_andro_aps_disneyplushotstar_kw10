import 'package:apps_donasi/page/welcome_page.dart';
import 'package:apps_donasi/tes.dart';
import 'package:apps_donasi/widget/navigasi_bar.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage()
    );
  }
}
