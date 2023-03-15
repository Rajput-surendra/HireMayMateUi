import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../AuthenticationView/loginScreen.dart';
import '../Helper/ColorClass.dart';
import '../buttons/CustomAppBar.dart';
import '../buttons/CustomButton.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {

  final _formKey = GlobalKey<FormState>();
  bool allSelected = false;
  TextEditingController datecontroller = TextEditingController();
  TextEditingController joindatecontroller = TextEditingController();



  String _dateValue = '';
  var dateFormate;
  String convertDateTimeDisplay(String date) {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('yyyy-MM-dd');
    final DateTime displayDate = displayFormater.parse(date);
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }
  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate:  DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2025),
        //firstDate: DateTime.now().subtract(Duration(days: 1)),
        // lastDate: new DateTime(2022),
        builder: (BuildContext context, Widget? child) {
          return Theme(
            data: ThemeData.light().copyWith(
                primaryColor: CustomColors.primaryColor,
                accentColor: Colors.black,
                colorScheme:  ColorScheme.light(primary:  CustomColors.primaryColor),
                // ColorScheme.light(primary: const Color(0xFFEB6C67)),
                buttonTheme:
                ButtonThemeData(textTheme: ButtonTextTheme.accent)),
            child: child!,
          );
        });
    if (picked != null)
      setState(() {
        String yourDate = picked.toString();
        _dateValue = convertDateTimeDisplay(yourDate);
        print(_dateValue);
        dateFormate = DateFormat("dd/MM/yyyy").format(DateTime.parse(_dateValue ?? ""));
        datecontroller = TextEditingController(text: _dateValue);
        joindatecontroller = TextEditingController(text: _dateValue);

      });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: customAppBar(text: "Projects",isTrue: true, context: context),
          backgroundColor: CustomColors.TransparentColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CustomAppBar(text: "Personal Details",istrue: true),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 30),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8,),

                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Project title",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hintText: 'Enter Your Project title',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Your Project title is required";
                                      }
                                    },
                                  ),
                                ),
                              ),


                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Started from",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                    controller: datecontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        suffixIcon: InkWell(onTap: (){
                                          _selectDate();
                                        },
                                            child: Icon(Icons.calendar_month_rounded,color: CustomColors.secondaryColor,)),
                                        hintText: 'Choose Started from',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10,top: 15)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Choose Started from is required";
                                      }

                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Ended on",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                    controller: joindatecontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        suffixIcon: InkWell(
                                            onTap: (){
                                              _selectDate();
                                            },
                                            child: Icon(Icons.calendar_month_rounded,color: CustomColors.secondaryColor,)),
                                        hintText: 'Choose End on',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10,top: 15)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Choose End on is required";
                                      }

                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),

                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Role in Project",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hintText: 'Enter Your Role in Project',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Your Role in Project is required";
                                      }

                                    },
                                  ),
                                ),
                              ),

                            SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Skill used",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
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
                                          hintText: 'Enter Your Skill used',
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(left: 10)
                                      ),
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return "Enter Your Skill used";
                                        }

                                      },
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Description",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  height: MediaQuery.of(context).size.height/4.5,
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
                                          hintText: 'Enter Description',
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(left: 10)
                                      ),
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return "Description is ";
                                        }

                                      },
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 40,),

                              CustomAppBtn(
                                height: 50,
                                width: 320,
                                title: 'SAVE',
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

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
