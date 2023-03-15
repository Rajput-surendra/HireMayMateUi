import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AuthenticationView/loginScreen.dart';
import '../Helper/ColorClass.dart';
import '../buttons/CustomAppBar.dart';
import '../buttons/CustomButton.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  bool isSelected = false;
  final _formKey = GlobalKey<FormState>();
  String dropdownIndustry = 'It Industry';
  var items =  [ 'It Industry','Civil Industry','All Industry'];

  String dropdownworkPlace = 'Indore';
  var itemsworkPlace =  [ 'Indore','Bhopal','Ujjain','Lalitpur'];

  String dropdownShift = 'Day';
  var itemsShift =  [ 'Day','Night',];

  String dropdownhome = 'Aira';
  var itemshome =  [ 'Aira','RajNagar',];

  String dropdownCity = 'Bpl';
  var itemsCity =  [ 'Bpl','jabalpur','Devas','Ratlam'];


  String dropdownnotic = '1 months ';
  var items1 =  [ '1 months ','2 months','3 months'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: customAppBar(text: "Work Experience",isTrue: true, context: context),
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
                        padding: const EdgeInsets.only(left: 10 ,top: 30),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8,),

                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Industry",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hint: Text("Choose Industry"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdownIndustry,
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
                                            dropdownIndustry = newValue!;
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
                                child: Text("Job role",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hintText: 'Enter Your Job role',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Job role is required";
                                      }
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Preferred Job type",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){
                                        setState(() {
                                          isSelected = true;
                                        });
                                      },
                                      child: Container(
                                         margin: EdgeInsets.all(8.0),
                                        padding:  EdgeInsets.all(3.0),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),

                                            border: Border.all(color:isSelected  ?  CustomColors.grade:CustomColors.lightback)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(child: Text('Full time')),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){
                                        setState(() {
                                          isSelected = false;
                                        });
                                      },
                                      child: Container(
                                         margin:  EdgeInsets.all(8.0),
                                        padding:  EdgeInsets.all(3.0),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(color:isSelected  ? CustomColors.lightback: CustomColors.grade)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(child: Text('Part time')),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Preferred WorkPlace",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hint: Text("Choose WorkPlace"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdownworkPlace,
                                        icon: Icon(Icons.keyboard_arrow_down,size: 40,),
                                        items:itemsworkPlace.map((String items) {
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
                                            dropdownworkPlace = newValue!;
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
                                child: Text("Working Shift",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hint: Text("Choose Working Shift"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdownShift,
                                        icon: Icon(Icons.keyboard_arrow_down,size: 40,),
                                        items:itemsShift.map((String items) {
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
                                            dropdownShift = newValue!;
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
                                child: Text("Min Salary/Month",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hintText: 'Min Salary/Month',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 10)
                                    ),
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Min Salary/Month is required";
                                      }

                                    },
                                  ),
                                ),
                              ),

                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text("Home town",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hint: Text("Choose Home town"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdownhome,
                                        icon: Icon(Icons.keyboard_arrow_down,size: 40,),
                                        items:itemshome.map((String items) {
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
                                            dropdownhome = newValue!;
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
                                child: Text("Preferred City",style: TextStyle(color: CustomColors.grayColor,fontSize: 16,fontWeight: FontWeight.bold),),
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
                                        hint: Text("Choose City"),
                                        isExpanded: true,
                                        elevation: 0,
                                        value: dropdownCity,
                                        icon: Icon(Icons.keyboard_arrow_down,size: 40,),
                                        items:itemsCity.map((String items) {
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
                                            dropdownCity = newValue!;
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
