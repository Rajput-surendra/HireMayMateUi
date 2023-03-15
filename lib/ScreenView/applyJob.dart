import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/ColorClass.dart';
import '../buttons/CustomAppBar.dart';
import '../buttons/CustomCard.dart';

class ApplyJob extends StatefulWidget {
  const ApplyJob({Key? key}) : super(key: key);

  @override
  State<ApplyJob> createState() => _ApplyJobState();
}

class _ApplyJobState extends State<ApplyJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.TransparentColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(text: "Applied Jobs",),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: CustomColors.AppbarColor1
                        ),
                        height: 50,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width/1.3,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Search your job',
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                  Icons.search
                              )

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: CustomColors.AppbarColor1
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(
                                Icons.menu
                            )
                        ),
                      ),
                    ],
                  ),
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
                          return applyJob(context,index,cardUi);
                        }),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
