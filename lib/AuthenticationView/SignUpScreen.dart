import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiremymate/AuthenticationView/loginScreen.dart';

import '../Helper/ColorClass.dart';
import '../buttons/CustomButton.dart';
import 'OtpScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isVisible = true;
  bool allSelected = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: Form(
              key: _formKey,
              child: Column(
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
                  Text("Create Account",style: TextStyle(
                      color: CustomColors.TextColors,fontWeight: FontWeight.bold,fontSize: 20
                  ),),
                  SizedBox(height: 10,),
                  Text("Fill up the following details to create your account", style: TextStyle(
                      color: CustomColors.lightblackAllText
                  ),),
                  SizedBox(height: 8,),
                  Text(" and enjoy our services.", style: TextStyle(
                      color: CustomColors.lightblackAllText
                  ),),
                  SizedBox(height: 8,),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Full Name",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                            hintText: 'Enter Your Name',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10)
                        ),
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "Name is required";
                          }
                          if (!v.contains("   ")) {
                            return "Enter Valid Name";
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Email",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: ' Enter Your Email',
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
                  SizedBox(height: 5,),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Mobile Number",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                        maxLength: 10,
                        maxLines: 1,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          counterText: "",
                            hintText: 'Enter Your Mobile Number',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10)
                        ),
                        validator: (v) {
                          if (v!.isEmpty) {
                            return "Mobile is required";
                          }
                          if (!v.contains("   ")) {
                            return "Enter Valid Mobile";
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
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
                    padding:  EdgeInsets.only(left: 5),
                    child: Text("Confirm Password",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                            hintText: 'Confirm Password',
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
                        Text("I agree to all terms & condition and privacy policy",style: TextStyle(color: CustomColors.lightblackAllText,fontSize: 13,),),
                      ],
                    ),
                  ),

                  SizedBox(height: 40,),
                  CustomAppBtn(
                    height: 50,
                    width: 320,
                    title: 'SIGN UP',
                    onPress: () {
                      if (_formKey.currentState!.validate()) {
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>LoginScreen()));
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      }
                      const snackBar = SnackBar(
                        content: Text('All Fields are required!'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    },
                  ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Already have An Account?",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,),),
                      Text(" Login",style: TextStyle(color: CustomColors.secondaryColor,fontSize: 16,),)
                    ],
                  ),
                  SizedBox(height: 30,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
