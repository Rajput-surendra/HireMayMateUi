import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiremymate/ScreenView/homeScreen.dart';

import '../Helper/ColorClass.dart';
import '../buttons/CustomButton.dart';
import 'Dashbord.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.TransparentColor,
        body: Padding(
          padding: EdgeInsets.only(left: 10,top: 10,right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: MediaQuery.of(context).size.height/2.5,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 80,
                        left: 10,
                        right: 10,
                        child: SizedBox(
                          height: 250,
                          child: Card(
                            color: CustomColors.AppbarColor1,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120,
                          child:Image.asset("assets/images/successimages.png",height: 170,),
                      ),
                      Positioned(
                          top: 200,
                          left: 140,
                          child: Text("Great !",style: TextStyle(
                              color: CustomColors.secondaryColor,fontWeight: FontWeight.bold,fontSize: 25
                          ),)
                      ),
                      Positioned(
                          top: 240,
                          left: 60  ,
                          child: Text("your account Created Successfully",style: TextStyle(
                              color: CustomColors.primaryColor,fontWeight: FontWeight.bold,fontSize: 15
                          ),)
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CustomAppBtn(
                    height: 50,
                    width: 320,
                    title: 'CONTINUE',
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>Dashboard()));
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));


                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
