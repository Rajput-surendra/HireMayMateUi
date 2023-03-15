import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hiremymate/AuthenticationView/forgotPassword.dart';
import 'package:hiremymate/Helper/ColorClass.dart';

import '../buttons/CustomButton.dart';
import 'OtpScreen.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}
final _formKey = GlobalKey<FormState>();


class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  bool allSelected = false;
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
          body: SingleChildScrollView(
            child: Form(
              key:  _formKey,
              child: Padding(
                padding: EdgeInsets.only(left: 25,top: 10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color:CustomColors.grade,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Icon(Icons.arrow_back,color: CustomColors.AppbarColor1,),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Welcome back!",style: TextStyle(
                        color: CustomColors.TextColors,fontWeight: FontWeight.bold,fontSize: 20
                    ),),
                    SizedBox(height: 10,),
                    Text("Login with your Email/Mobile number Or continue", style: TextStyle(
                        color: CustomColors.lightblackAllText
                    ),),
                    SizedBox(height: 8,),
                    Text("With social media account.", style: TextStyle(
                        color: CustomColors.lightblackAllText
                    ),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Email/Phone",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Email/Phone',
                              border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10)
                          ),
                          validator: (v) {
                          if (v!.isEmpty) {
                            return "Email is required";
                          }
                          if (!v.contains("@")) {
                            return "Enter Valid Email Id";
                          }
                        },
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding:  EdgeInsets.only(left: 5),
                      child: Text("Password",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        child: TextFormField(
                          obscureText: isVisible,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(icon: Icon(
                              isVisible ?
                              Icons.visibility
                              : Icons.visibility_off,
                              color: CustomColors.lightback,size: 20,),
                            onPressed: (){
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },),
                              hintText: 'Enter Your Password',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 10,top: 12)
                          ),
                          validator: (v) {
                            if (v!.isEmpty) {
                              return "Password is required";
                            }
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),

                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 10),
                      child: Row (
                        children: [
                          InkWell(
                            onTap: (){
                              setState(() {
                                allSelected = ! allSelected;
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(color: CustomColors.lightblackAllText)
                              ),
                              child: allSelected ?
                              Icon( Icons.check ,size: 18,)
                                  :  SizedBox(),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("Remember me",style: TextStyle(color: CustomColors.lightblackAllText,fontSize: 13,),),
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    CustomAppBtn(
                      height: 50,
                      width: 320,
                      title: 'LOGIN',
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>VerifyOTP()));
                      },
                    ),
                    SizedBox(height: 50,),
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 30.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                      Text("Or Login with"),
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 10.0, right: 30.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                    ]),



                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/appleicon.png',height: 70,width: 70,),
                        SizedBox(width: 10),
                        Image.asset('assets/images/googleicon.png',height: 70,width: 70,),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Don’t have an account?",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,),),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                          },
                            child: Text(" Register Now",style: TextStyle(color: CustomColors.secondaryColor,fontSize: 16,),))
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
