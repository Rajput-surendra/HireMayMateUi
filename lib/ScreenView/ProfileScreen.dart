import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiremymate/ProfilesScreen/ProjectScreen.dart';
import 'package:image_picker/image_picker.dart';

import '../Helper/ColorClass.dart';
import '../ProfilesScreen/CertificationScreen.dart';
import '../ProfilesScreen/Education.dart';
import '../ProfilesScreen/JobPreference.dart';
import '../ProfilesScreen/personalDetails.dart';
import '../ProfilesScreen/workExperience.dart';
import '../buttons/CustomAppBar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<bool> showExitPopup() async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
              title: Text('Select Image'),
              content: Row(
                // crossAxisAlignment: CrossAxisAlignment.s,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _getFromCamera();
                    },
                    //return false when click on "NO"
                    child: Text('Camera'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _getFromGallery();
                      // Navigator.pop(context,true);
                      // Navigator.pop(context,true);
                    },
                    //return true when click on "Yes"
                    child: Text('Gallery'),
                  ),
                ],
              )),
        ) ??
        false; //if showDialouge had returned null, then return false
  }

  _getFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    /* PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );*/
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
      Navigator.pop(context);
    }
  }

  _getFromCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 100);
    /*  PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );*/
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
      Navigator.pop(context);
    }
  }

  List<Map<String, dynamic>> profile = [
    {
      'text': 'Personal Details',
      'address': 'Mumbai',


    },
    {

      'text': 'Job Preference',
      'address': 'Mumbai',

    },

    {
      'text': 'Work Experience',
      'address': 'Mumbai',

    },

    // {"image": "assets/images/2022.png", "name":"card night" ,"location":"assets/images/location.png","address": "Palsia, Indore"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [
                  CustomColors.grade1,
                  CustomColors.grade,
                ],

              ),
            ),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.add,color:CustomColors.grade1,
          ),
          title: Text(
            'My Profile',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                      CustomColors.AppbarColor1.withOpacity(0.4)),
                  child: Icon(
                    Icons.notifications_none,
                    color: CustomColors.AppbarColor1,
                  ),
                ),
              ),
            ),
          ]),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 6.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  CustomColors.grade1,
                                  CustomColors.grade,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          right: 0,
                          left: 0,
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 5.2,
                                width: MediaQuery.of(context).size.width / 3.2,
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                      FileImage(imageFile ?? File(" ")),
                                  backgroundColor: CustomColors.secondaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 130,
                            right: 140,
                            left: 180,
                            child: InkWell(
                              onTap: () {
                                showExitPopup();
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: CustomColors.AppbarColor1,
                                    borderRadius: BorderRadius.circular(50)),
                                // height: 30,
                                // width: 30,
                                child: Center(
                                  child: Icon(
                                    Icons.edit,
                                    color: CustomColors.secondaryColor,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Surendra",
                style: TextStyle(
                    color: CustomColors.darkblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    color: CustomColors.darkblack,
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Card(
                    elevation: 3,
                    child: InkWell(
                      onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDetails()));
                      },
                      child: Container(
                        color: CustomColors.AppbarColor1,
                        height: MediaQuery.of(context).size.height / 7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Personal Details",
                                    style: TextStyle(
                                        color: CustomColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "Tell us about Personal Details",
                                    style: TextStyle(
                                        color: CustomColors.darkblack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: CustomColors.lightgray.withOpacity(0.1)
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Card(
                    elevation: 3,
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>JobPreference()));
                      },
                      child: Container(
                        color: CustomColors.AppbarColor1,
                        height: MediaQuery.of(context).size.height / 7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Job Preference",
                                    style: TextStyle(
                                        color: CustomColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "Tell us about Personal Details",
                                    style: TextStyle(
                                        color: CustomColors.darkblack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: CustomColors.lightgray.withOpacity(0.1)
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Card(
                    elevation: 3,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkExperience()));
                      },
                      child: Container(
                        color: CustomColors.AppbarColor1,
                        height: MediaQuery.of(context).size.height / 7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Work Experience",
                                    style: TextStyle(
                                        color: CustomColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "Tell us about Personal Details",
                                    style: TextStyle(
                                        color: CustomColors.darkblack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: CustomColors.lightgray.withOpacity(0.1)
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Card(
                    elevation: 3,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Education()));
                      },
                      child: Container(
                        color: CustomColors.AppbarColor1,
                        height: MediaQuery.of(context).size.height / 7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Education",
                                    style: TextStyle(
                                        color: CustomColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "Tell us about Personal Details",
                                    style: TextStyle(
                                        color: CustomColors.darkblack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: CustomColors.lightgray.withOpacity(0.1)
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Card(
                    elevation: 3,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectScreen()));
                      },
                      child: Container(
                        color: CustomColors.AppbarColor1,
                        height: MediaQuery.of(context).size.height / 7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Projects",
                                    style: TextStyle(
                                        color: CustomColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "Tell us about Personal Details",
                                    style: TextStyle(
                                        color: CustomColors.darkblack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: CustomColors.lightgray.withOpacity(0.1)
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Card(
                    elevation: 3,
                    child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CertificationScreen()));
                    },
                      child: Container(
                        color: CustomColors.AppbarColor1,
                        height: MediaQuery.of(context).size.height / 7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Certification",
                                    style: TextStyle(
                                        color: CustomColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "Tell us about Personal Details",
                                    style: TextStyle(
                                        color: CustomColors.darkblack,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  )
                                ],
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: CustomColors.lightgray.withOpacity(0.1)
                                ),
                                child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    color: CustomColors.AppbarColor1,
                    height: MediaQuery.of(context).size.height / 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Key Skill",
                                style: TextStyle(
                                    color: CustomColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                "Tell us about Personal Details",
                                style: TextStyle(
                                    color: CustomColors.darkblack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              )
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: CustomColors.lightgray.withOpacity(0.1)
                            ),
                            child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    color: CustomColors.AppbarColor1,
                    height: MediaQuery.of(context).size.height / 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Language",
                                style: TextStyle(
                                    color: CustomColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                "Tell us about Personal Details",
                                style: TextStyle(
                                    color: CustomColors.darkblack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              )
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: CustomColors.lightgray.withOpacity(0.1)
                            ),
                            child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    color: CustomColors.AppbarColor1,
                    height: MediaQuery.of(context).size.height / 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Upload Resume",
                                style: TextStyle(
                                    color: CustomColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                "Tell us about Personal Details",
                                style: TextStyle(
                                    color: CustomColors.darkblack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                              )
                            ],
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: CustomColors.lightgray.withOpacity(0.1)
                            ),
                            child: Center(child: Icon(Icons.arrow_forward_ios_sharp,color: CustomColors.darkblack,)),

                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                ],
              )

            ],
          ),
        ));
  }
}
