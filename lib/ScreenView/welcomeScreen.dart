import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hiremymate/Helper/ColorClass.dart';

import '../AuthenticationView/loginScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Confirm Exit"),
                content: Text("Are you sure you want to exit?"),
                actions: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:CustomColors.primaryColor
                    ),
                    child: Text("YES"),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary:CustomColors.primaryColor
                    ),
                    child: Text("NO"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            }
        );
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CustomColors.AppbarColor1,
          body: Padding(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: 10,),
                  // Padding(
                  //   padding:  EdgeInsets.only(left: 10),
                  //   child: InkWell(
                  //     onTap: (){
                  //       Navigator.pop(context);
                  //     },
                  //     child: Container(
                  //       height: 35,
                  //       width: 35,
                  //       decoration: BoxDecoration(
                  //         color:CustomColors.grade,
                  //         borderRadius: BorderRadius.circular(5)
                  //       ),
                  //       child: Icon(Icons.arrow_back,color: CustomColors.AppbarColor1,),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 20,),
                  Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child: Text("Choose Your Role",style: TextStyle(
                      color: CustomColors.TextColors,fontWeight: FontWeight.bold,fontSize: 20
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Choose weather You are looking for a job or you ", style: TextStyle(
                        color: CustomColors.lightblackAllText
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("want to hire someone. ", style: TextStyle(
                        color: CustomColors.lightblackAllText
                    ),),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/welcomeImages/jobseeker.png"),
                        Positioned(
                          top: 30,
                            left: 30,
                            child: Text("I am a job\nSeeker",style: TextStyle(
                            color: CustomColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 22
                            ),)
                        ),
                        Positioned(
                            top: 110,
                            left: 30  ,
                            child: Text("I want to find job for me",style: TextStyle(
                            color: CustomColors.AppbarColor1,fontWeight: FontWeight.bold,fontSize: 13
                            ),)
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Stack(
                    children: [
                      Image.asset("assets/welcomeImages/employee.png"),
                      Positioned(
                          top: 30,
                          left: 170,
                          child: Text("I am an\nEmployer",style: TextStyle(
                              color: CustomColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 22
                          ),)
                      ),
                      Positioned(
                          top: 100,
                          left: 170  ,
                          child: Text("I want to find job for me",style: TextStyle(
                              color: CustomColors.AppbarColor1,fontWeight: FontWeight.bold,fontSize: 13
                          ),)
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
