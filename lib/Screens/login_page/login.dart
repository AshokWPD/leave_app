import 'package:flutter/material.dart';
import 'package:management_app/constants/defalts.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold (
        appBar: deffappbar(text: "LOG IN"),
        body: Column(
          children: [
            
          ],
        ),
        
      ),
    );
  }
}