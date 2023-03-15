import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/ColorClass.dart';
import '../buttons/CustomAppBar.dart';
import '../buttons/CustomCard.dart';

class SavedJob extends StatefulWidget {
  const SavedJob({Key? key}) : super(key: key);

  @override
  State<SavedJob> createState() => _SavedJobState();
}

class _SavedJobState extends State<SavedJob> {
  // List<Map<String, dynamic>> cardUi = [
  //   {
  //     'image': "assets/homeScreen/homeScreenimage1.png",
  //     'text': 'Aglowid IT Solutions PVT. LTD.',
  //     'address': 'Mumbai',
  //     "time": "Ui/Ux designer",
  //     "paytext":"₹60k-25k PA",
  //     "area":"Pune"
  //
  //   },
  //   {
  //     'image': "assets/homeScreen/homeScreenimage2.png",
  //     'text': 'Aglowid IT Solutions PVT. LTD.',
  //     'address': 'Mumbai',
  //     "time": "Ui/Ux designer",
  //     "paytext":"₹60k-25k PA",
  //     "area":"Pune"
  //   },
  //
  //   {
  //     'image': "assets/homeScreen/homeScreenimage3.png",
  //     'text': 'Aglowid IT Solutions PVT. LTD.',
  //     'address': 'Mumbai',
  //     "time": "Ui/Ux designer",
  //     "paytext":"₹60k-25k PA",
  //     "area":"Pune"
  //   },
  //   {
  //     'image': "assets/homeScreen/homeScreenimage3.png",
  //     'text': 'Aglowid IT Solutions PVT. LTD.',
  //     'address': 'Mumbai',
  //     "time": "Ui/Ux designer",
  //     "paytext":"₹60k-25k PA",
  //     "area":"Pune"
  //   },
  //   {
  //     'image': "assets/homeScreen/homeScreenimage3.png",
  //     'text': 'Aglowid IT Solutions PVT. LTD.',
  //     'address': 'Mumbai',
  //     "time": "Ui/Ux designer",
  //     "paytext":"₹60k-25k PA",
  //     "area":"Pune"
  //   },
  //
  //   // {"image": "assets/images/2022.png", "name":"Party night" ,"location":"assets/images/location.png","address": "Palsia, Indore"},
  // ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: CustomColors.TransparentColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(text: "My Saved Jobs",),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text("All Your Jobs",style: TextStyle(
                  fontSize: 22,
                    color: CustomColors.primaryColor,fontWeight: FontWeight.bold
                ),),
              ),
              SingleChildScrollView(
                child: Container(
                  height:MediaQuery.of(context).size.height/1.4,
                  child: ListView.builder(
                     // physics:  NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                       // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: cardUi.length,
                      itemBuilder: (context, index) {
                        return jobCard(context,index,cardUi);
                      }),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
