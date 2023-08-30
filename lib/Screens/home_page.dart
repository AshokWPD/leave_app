import 'package:flutter/material.dart';
import 'package:management_app/constants/defalts.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar:deffappbar(text: "HOME SCREEN"),
          body: Column(
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width-30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: defcolor
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width-220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: defcolor
                  ),
                ),
              ),
              // SizedBox(width: 15,),
              Center(
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width-220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: defcolor
                  ),
                ),
              ),
                ],
              ),

            ],
          ),
        
        ),
      ),
    );
  }
}


