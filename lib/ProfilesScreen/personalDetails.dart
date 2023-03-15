import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../AuthenticationView/loginScreen.dart';
import '../Helper/ColorClass.dart';
import '../buttons/CustomAppBar.dart';
import '../buttons/CustomButton.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final _formKey = GlobalKey<FormState>();
  DateTime currentDate = DateTime.now();
  TextEditingController dobcontroller = TextEditingController();

  String dropdowngender = 'Male';
  var items =  [ 'Male','Female'];
  String dropdownstatus = 'Married ';
  var items1 =  [ 'Married ','Unmarried'];

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
        dobcontroller = TextEditingController(text: _dateValue);


      });
  }

  calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(text: "Personal Details",isTrue: true, context: context),
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
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Date of birth",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                   onTap: (){
                                     _selectDate();
                                   },
                                    controller: dobcontroller,
                                    maxLength: 10,
                                    maxLines: 1,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        counterText: "",
                                        hintText: 'Enter Your Date of birth',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return " Your Date of birth is required";
                                      }

                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Gender",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hint: Text("Choose gender"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdowngender,
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
                                            dropdowngender = newValue!;
                                          });
                                        },

                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Marital Status",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hint: Text("Choose Marital Status"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdownstatus,
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
                                            dropdownstatus = newValue!;
                                          });
                                        },

                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Permanent Address",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  height: MediaQuery.of(context).size.height/4.2,
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
                                          hintText: 'Enter Your Permanent Address',
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(left: 10)
                                      ),
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return "Date of Permanent Address";
                                        }
                                        if (!v.contains("   ")) {
                                          return "Date of Permanent Address";
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
