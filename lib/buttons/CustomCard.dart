import 'package:flutter/material.dart';

import '../Helper/ColorClass.dart';
List<Map<String, dynamic>> cardUi = [
  {
    'image': "assets/homeScreen/homeScreenimage1.png",
    'text': 'Aglowid IT Solutions PVT. LTD.',
    'address': 'Mumbai',
    "time": "Ui/Ux designer",
    "paytext":"₹60k-25k PA",
    "area":"Pune"

  },
  {
    'image': "assets/homeScreen/homeScreenimage2.png",
    'text': 'Aglowid IT Solutions PVT. LTD.',
    'address': 'Mumbai',
    "time": "Ui/Ux designer",
    "paytext":"₹60k-25k PA",
    "area":"Pune"
  },

  {
    'image': "assets/homeScreen/homeScreenimage3.png",
    'text': 'Aglowid IT Solutions PVT. LTD.',
    'address': 'Mumbai',
    "time": "Ui/Ux designer",
    "paytext":"₹60k-25k PA",
    "area":"Pune"
  },
  {
    'image': "assets/homeScreen/homeScreenimage3.png",
    'text': 'Aglowid IT Solutions PVT. LTD.',
    'address': 'Mumbai',
    "time": "Ui/Ux designer",
    "paytext":"₹60k-25k PA",
    "area":"Pune"
  },
  {
    'image': "assets/homeScreen/homeScreenimage3.png",
    'text': 'Aglowid IT Solutions PVT. LTD.',
    'address': 'Mumbai',
    "time": "Ui/Ux designer",
    "paytext":"₹60k-25k PA",
    "area":"Pune"
  },

  // {"image": "assets/images/2022.png", "name":"card night" ,"location":"assets/images/location.png","address": "Palsia, Indore"},
];
List<Map<String, dynamic>> chatCard = [
  {
    'image': "assets/homeScreen/homeScreenimage1.png",
    'text': 'Ankit garwal',
    'address': 'What is the status of job interview ?',
    "month": "Jun11",


  },
  {
    'image': "assets/homeScreen/homeScreenimage2.png",
    'text': 'Johan',
    'address': 'What is the status of job interview ?',
    "month": "Feb",

  },

  {
    'image': "assets/homeScreen/homeScreenimage3.png",
    'text': 'Jack',
    'address': 'What is the status of job interview ?',
    "month": "Mar",

  },
  {
    'image': "assets/homeScreen/homeScreenimage3.png",
    'text': 'Suresh',
    'address': 'What is the status of job interview ?',
    "month": "Apr",

  },
  {
    'image': "assets/homeScreen/homeScreenimage3.png",
    'text': 'Ravindra Sahu',
    'address': 'What is the status of job interview ?',
    "month": "May",

  },

  // {"image": "assets/images/2022.png", "name":"card night" ,"location":"assets/images/location.png","address": "Palsia, Indore"},
];

Widget jobCard(BuildContext context, int index, cardUi){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      // height: 150,
      width: MediaQuery
          .of(context)
          .size
          .width / 1.1,
      child:Card(
        elevation: 5,
        color: CustomColors.TransparentColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start,
          mainAxisAlignment: MainAxisAlignment
              .start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .start,
                crossAxisAlignment: CrossAxisAlignment
                    .start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(
                        8.0),
                    child: Image.asset(
                      cardUi[index]['image'],
                      height: 60,
                      width: 60,
                      // fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start,
                    children: [
                      Padding(
                        padding: const EdgeInsets
                            .only(top: 20),
                        child: Text(
                          cardUi[index]['text'],
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight
                                  .bold),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        cardUi[index]['address'],
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight
                                .normal),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 5),
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: CustomColors
                                .AppbarColor1,
                            borderRadius: BorderRadius
                                .circular(50)
                        ),
                        child: Image.asset(
                            "assets/homeScreen/jobpath.png")
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    cardUi[index]['time'],
                    style: TextStyle(color: CustomColors.darkblack,
                        fontSize: 15,
                        fontWeight: FontWeight
                            .normal),
                  ),
                  VerticalDivider(
                    color: Colors.black,  //color of divider
                    width: 10, //width space of divider
                    thickness: 3, //thickness of divier line
                    indent: 10, //Spacing at the top of divider.
                    endIndent: 10, //Spacing at the bottom of divider.
                  ),
                  Text(
                    cardUi[index]['paytext'],
                    style: TextStyle(color: CustomColors.darkblack,
                      fontSize: 15,
                      fontWeight: FontWeight
                          .normal,),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: CustomColors.lightback,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: CustomColors.lightback.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Full Time")),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: CustomColors.lightback.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Onsite")),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: CustomColors.lightback.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("0-2 year")),
                  ),
                  SizedBox(width: 5,),
                  Text("15 days ago",style: TextStyle(color: CustomColors.secondaryColor),)
                ],
              ),
            )


          ],
        ),
      ),
    ),
  );
}
Widget applyJob(BuildContext context , int index,cardUi){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      // height: 150,
      width: MediaQuery
          .of(context)
          .size
          .width / 1.2,
      child:Card(
        elevation: 5,
        color: CustomColors.TransparentColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start,
          mainAxisAlignment: MainAxisAlignment
              .start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .start,
                crossAxisAlignment: CrossAxisAlignment
                    .start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(
                        8.0),
                    child: Image.asset(
                      cardUi[index]['image'],
                      height: 60,
                      width: 60,
                      // fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start,
                    children: [
                      Padding(
                        padding: const EdgeInsets
                            .only(top: 20),
                        child: Text(
                          cardUi[index]['text'],
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight
                                  .bold),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        cardUi[index]['address'],
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight
                                .normal),
                      ),
                    ],
                  ),
                  // SizedBox(width: MediaQuery.of(context).size.width/6.0,),
                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       top: 10, left: 5),
                  //   child: Container(
                  //       height: 40,
                  //       width: 40,
                  //       decoration: BoxDecoration(
                  //           color: CustomColors
                  //               .AppbarColor1,
                  //           borderRadius: BorderRadius
                  //               .circular(50)
                  //       ),
                  //       child: Image.asset(
                  //           "assets/homeScreen/jobpath.png")
                  //   ),
                  // ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    cardUi[index]['time'],
                    style: TextStyle(color: CustomColors.darkblack,
                        fontSize: 15,
                        fontWeight: FontWeight
                            .normal),
                  ),
                  VerticalDivider(
                    color: Colors.black,  //color of divider
                    width: 10, //width space of divider
                    thickness: 3, //thickness of divier line
                    indent: 10, //Spacing at the top of divider.
                    endIndent: 10, //Spacing at the bottom of divider.
                  ),
                  Text(
                    cardUi[index]['paytext'],
                    style: TextStyle(color: CustomColors.darkblack,
                      fontSize: 15,
                      fontWeight: FontWeight
                          .normal,),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: CustomColors.lightback,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: CustomColors.lightback.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Full Time")),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: CustomColors.lightback.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("Onsite")),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: CustomColors.lightback.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text("0-2 year")),
                  ),
                  SizedBox(width: 5,),
                  Text("15 days ago",style: TextStyle(color: CustomColors.secondaryColor),)
                ],
              ),
            ),
            SizedBox(height: 10,)


          ],
        ),
      ),
    ),
  );
}
Widget chatUi(BuildContext context ,int index,chatCard){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: MediaQuery.of(context).size.height/5.3,
      width: MediaQuery
          .of(context)
          .size
          .width / 1.2,
      child:Card(
        elevation: 5,
        color: CustomColors.TransparentColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start,
          mainAxisAlignment: MainAxisAlignment
              .start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .start,
                crossAxisAlignment: CrossAxisAlignment
                    .start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(
                        8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        chatCard[index]['image'],
                        height: 60,
                        width: 60,
                         fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start,
                    children: [
                      Padding(
                        padding: const EdgeInsets
                            .only(top: 20),
                        child: Text(
                          chatCard[index]['text'],
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight
                                  .bold),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        chatCard[index]['address'],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight
                                .normal),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 5),
                    child: Column(
                      children: [
                        Text(
                          "Jan11",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight
                                  .normal),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: CustomColors.AppbarColor1,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(child: Text("3")),
                          ),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    ),
  );
}