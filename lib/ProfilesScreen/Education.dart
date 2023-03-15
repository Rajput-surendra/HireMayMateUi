import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../AuthenticationView/loginScreen.dart';
import '../Helper/ColorClass.dart';
import '../buttons/CustomAppBar.dart';
import '../buttons/CustomButton.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {

  final _formKey = GlobalKey<FormState>();
  String dropdownQalification = '10th ';
  var items =  [ '10th ','12th',"BCA","BE","MCA"];

    String dropdownCourse = 'Computer';
  var items1 =  [ 'Computer','BCA','PGDCA'];
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
    return  SafeArea(
      child: Scaffold(
          appBar: customAppBar(text: "Education",isTrue: true, context: context),
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
                                child: Text("Highest Qalification",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 0,right: 10),
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        hint: Text("Choose Highest Qalification"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdownQalification,
                                        icon: Icon(Icons.keyboard_arrow_down,size: 40,),
                                        items:items.map((String items) {
                                          return DropdownMenuItem(
                                              value: items,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(items),
                                              )
                                          );
                                        }
                                        ).toList(),
                                        onChanged: (String? newValue){
                                          setState(() {
                                            dropdownQalification = newValue!;
                                          });
                                        },

                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("University / Institute",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hintText: 'Enter Your University / Institute',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Enter Your University / Institute is required";
                                      }
                                    },
                                  ),
                                ),
                              ),

                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Course Name",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hintText: 'Enter Your Course Name',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Your Course Name is required";
                                      }
                                    },
                                  ),
                                ),
                              ),


                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Specialization",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hintText: 'Enter Your Specialization',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Specialization is required";
                                      }
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
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
                                    Text("I am Currently working here",style: TextStyle(color: CustomColors.lightblackAllText,fontSize: 13,),),
                                  ],
                                ),
                              ),


                              SizedBox(height: 15,),
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
                                        hintText: 'Choose Joining Date',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10,top: 15)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Choose Joining Date is required";
                                      }

                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("End on",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hintText: 'Choose End Date',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10,top: 15)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Choose End Date is required";
                                      }

                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Course type",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 0,right: 10),
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        hint: Text("Choose Course type"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdownCourse,
                                        icon: Icon(Icons.keyboard_arrow_down,size: 40,),
                                        items:items1.map((String items) {
                                          return DropdownMenuItem(
                                              value: items,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(items),
                                              )
                                          );
                                        }
                                        ).toList(),
                                        onChanged: (String? newValue){
                                          setState(() {
                                            dropdownCourse = newValue!;
                                          });
                                        },

                                      ),
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
