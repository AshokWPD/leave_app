import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:management_app/constants/defalts.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

final _formkey = GlobalKey<FormState>();

TextEditingController _emailcontroller = new TextEditingController();
TextEditingController _passwaorcontroller = new TextEditingController();


class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home : Scaffold (
          appBar: deffappbar(text: "LOG IN"),
          body: ListView(
            children: [
              Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
          
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height/2,
                        width: MediaQuery.of(context).size.width-15,
                        decoration: BoxDecoration(
                          color: defcolor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width-35,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  
                                  controller: _emailcontroller,
                                  validator:(value) {
                                    if(value!.isEmpty){
                                      return ("Please enter your email");
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    icon: Image.asset("assets/logos/gmail.png",scale: 13,),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                                                      ),

                            //password

                            Container(
                              width: MediaQuery.of(context).size.width-35,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  
                                  controller: _passwaorcontroller,
                                  validator:(value) {
                                    if(value!.isEmpty){
                                      return ("Please enter your pasword");
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    icon: Image.asset("assets/logos/reset-password.png",scale: 13,),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                                                      ),

                          GestureDetector(
                            child: Container(
                                width: MediaQuery.of(context).size.width-250,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text("Log In",
                                                             style: GoogleFonts.lobsterTwo(
                                  color: Colors.black,fontSize: 25,
                                  fontWeight: FontWeight.bold),),
                                ),
                                ),
                          ),

                           

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height/9,
                        width: MediaQuery.of(context).size.width-30,
                        decoration: BoxDecoration(
                          color: defcolor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              child: Image.asset("assets/logos/google.png",scale: 9,
                              
                              )),
                            GestureDetector(
                              child: Image.asset("assets/logos/facebook.png",scale: 9,)),
                            GestureDetector(
                              child: Image.asset("assets/logos/gmail.png",scale: 9,)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: GestureDetector(
                        child: Container(
                          height: MediaQuery.of(context).size.height/15,
                          width: MediaQuery.of(context).size.width-160,
                          decoration: BoxDecoration(
                            color: defcolor,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text("New User, Sign Up",
                            style: GoogleFonts.lobsterTwo(
                              color: Colors.black,fontSize: 21,
                              fontWeight: FontWeight.bold),),
                          )
                        ),
                      ),
                    ),
           
                    SizedBox(
                      height: 30,
                    ),
                    Text("Power By ASHO")  
                  ],
                ),
              ),
            ],
          ),
        
        ),
      ),
    );
  }
}
