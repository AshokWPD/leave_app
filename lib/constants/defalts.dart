import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color defcolor =  Color.fromARGB(255, 6, 226, 242);

  


// app bar
 
class deffappbar extends StatelessWidget implements PreferredSizeWidget {

 final  String text;

   deffappbar({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
  elevation: 0,
  backgroundColor: Colors.white,
  title: Center(child: Text(text,style: GoogleFonts.lobsterTwo(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),

);
  }
  
 @override
  Size get preferredSize =>Size.fromHeight(kToolbarHeight);
}

