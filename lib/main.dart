import 'package:flutter/material.dart';
import 'package:skincare/custom_code/actions/hide_status_bar.dart';
import 'package:skincare/screens/opening_screen.dart';



void main(){
  runApp(const MyApp());
  //await hidestatusbar();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: OpenScreen(),
    );
  }
}



 

