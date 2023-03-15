import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiremymate/Helper/ColorClass.dart';

import '../buttons/CustomButton.dart';
import '../buttons/CustomCard.dart';
import 'Drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  bool isLoading = false;

  List<Map<String, dynamic>> card = [
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

    // {"image": "assets/images/2022.png", "name":"card night" ,"location":"assets/images/location.png","address": "Palsia, Indore"},
  ];
  List<Map<String, dynamic>> card2 = [
    {
      'image': "assets/images/HomeScreenContainerimage.png",
      'title': 'Accommodation',
      'Subtitle': '2351 Hotels',
      "Color": "1",
    },
    {
      'image': "assets/images/HomeScreenContainerimage.png",
      'title': 'Accommodation',
      'Subtitle': '2351 Hotels',
      "Color": "2",
    },
    {
      'image': "assets/images/HomeScreenContainerimage.png",
      'title': 'Accommodation',
      'Subtitle': '2351 Hotels',
      "Color": "3",
    },
    {
      'image': "assets/images/HomeScreenContainerimage.png",
      'title': 'Accommodation',
      'Subtitle': '2351 Hotels',
      "Color": "4",
    },
    {
      'image': "assets/images/HomeScreenContainerimage.png",
      'title': 'Accommodation',
      'Subtitle': '2351 Hotels',
      "Color": "5",
    },
    {
      'image': "assets/images/HomeScreenContainerimage.png",
      'title': 'Accommodation',
      'Subtitle': '2351 Hotels',
      "Color": "6",
    },
    {
      'image': "assets/images/HomeScreenContainerimage.png",
      'title': 'Accommodation',
      'Subtitle': '2351 Hotels',
      "Color": "7",
    },
    {
      'image': "assets/images/HomeScreenContainerimage.png",
      'title': 'Accommodation',
      'Subtitle': '2351 Hotels',
      "Color": "8",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: CustomColors.TransparentColor,
           drawer: getDrawer(),
            appBar: AppBar(
                elevation: 0,
                backgroundColor: CustomColors.grade1,
                toolbarHeight: 100,
                leading:

                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30, bottom: 30),
                  child: InkWell(
                    onTap: (){
                      GetDrawer();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColors.AppbarColor1.withOpacity(0.4)
                      ),
                      child: Icon(Icons.menu),
                    ),
                  ),
                ),
                title: Image.asset("assets/images/titleicons.png"),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 10, top: 30, bottom: 30),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: CustomColors.AppbarColor1.withOpacity(0.4)
                      ),
                      child: Icon(Icons.notifications_none_outlined),
                    ),
                  )
                ]
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 190,
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 5.5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50)),
                            // gradient: LinearGradient(
                            //   colors: [CustomColors.grade1, CustomColors.grade],
                            // ),
                            color: CustomColors.grade1
                        ),
                        child: Stack(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 20),
                        child: Text("Hello Johan Deo", style: TextStyle(
                            color: CustomColors.AppbarColor1
                        ),),
                      ),

                      Positioned(
                        top: 40,
                        left: 18,
                        child: Text(
                          "Find Your Perfect job with us", style: TextStyle(
                            color: CustomColors.AppbarColor1,
                            fontSize: 22,
                            fontWeight: FontWeight.normal
                        ),),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height/6.6,
                        left: 40,
                        right: 40,
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
                                  .width / 1.6,
                              child: TextFormField(
                                decoration: InputDecoration(
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
                            SizedBox(height: 15,),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                            },
                            child: Stack(
                              children: [
                                Image.asset(
                                    "assets/homeScreen/homejonimages.png"),
                                Positioned(
                                    top: 30,
                                    left: 30,
                                    child: Text(
                                      "Looking for\nA Job?", style: TextStyle(
                                        color: CustomColors.secondaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22
                                    ),)
                                ),
                                Positioned(
                                    top: 100,
                                    left: 30,
                                    child: Text(
                                      "Optimize your whole life with ",
                                      style: TextStyle(
                                          color: CustomColors.AppbarColor1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11
                                      ),)
                                ),
                                Positioned(
                                    top: 115,
                                    left: 30,
                                    child: Text(
                                      "Premium feature", style: TextStyle(
                                        color: CustomColors.AppbarColor1,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11
                                    ),)
                                ),
                                Positioned(
                                    top: 140,
                                    left: 30,
                                    child: Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                          color: CustomColors.secondaryColor
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                            "Tty it Now", style: TextStyle(
                                              color: CustomColors.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11
                                          ),),
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Popular Jobs", style: TextStyle(
                                    color: CustomColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                ),),
                                Text("View all", style: TextStyle(
                                    color: CustomColors.lightback,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18
                                ),)
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/3.2,
                            width: double.infinity,
                            child: ListView.builder(
                              //physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: false,
                                scrollDirection: Axis.horizontal,
                                itemCount: card.length,
                                itemBuilder: (context, index) {
                                  return jobCard(context,index,cardUi);
                                }),
                          ),
                          ListView.builder(
                            //physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: card.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: MediaQuery.of(context).size.height/4.0,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 1.3,
                                  child: Card(
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
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                  8.0),
                                              child: Image.asset(
                                                card[index]['image'],
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
                                                    card[index]['text'],
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight: FontWeight
                                                            .bold),
                                                  ),
                                                ),
                                                SizedBox(height: 5,),
                                                Text(
                                                  card[index]['address'],
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
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Text(
                                                card[index]['paytext'],
                                                style: TextStyle(color: CustomColors.darkblack,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight
                                                      .normal,),
                                              ),
                                              VerticalDivider(
                                                color: Colors.black,  //color of divider
                                                width: 10, //width space of divider
                                                thickness: 3, //thickness of divier line
                                                indent: 10, //Spacing at the top of divider.
                                                endIndent: 10, //Spacing at the bottom of divider.
                                              ),
                                              Text(
                                                card[index]['time'],
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
                                                card[index]['area'],
                                                style: TextStyle(color: CustomColors.darkblack,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight
                                                      .normal,),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),


                        ],
                      ),
                    ),
                  ),
                )

              ],
            )
          // CustomScrollView(
          //   slivers: [
          //     SliverAppBar(
          //       snap: false,
          //       pinned: false,
          //       floating: true,
          //       flexibleSpace: FlexibleSpaceBar(
          //           centerTitle: true,
          //            //Images.network
          //       ), //FlexibleSpaceBar
          //       expandedHeight: 230,
          //       backgroundColor: CustomColors.primaryColor,
          //       leading:  Padding(
          //         padding: const EdgeInsets.only(left: 10,top: 5),
          //         child: Container(
          //           height: 45,
          //           width: 45,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: CustomColors.AppbarColor1.withOpacity(0.4)
          //           ),
          //           child: Icon(Icons.menu),
          //         ),
          //       ),
          //       //IconButton
          //       actions: <Widget>[
          //        Image.asset("assets/images/titleicons.png"),
          //         Padding(
          //           padding: const EdgeInsets.only(right: 10,top: 5),
          //           child: Container(
          //             height: 45,
          //             width: 45,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: CustomColors.AppbarColor1.withOpacity(0.4)
          //             ),
          //             child: Icon(Icons.notifications_none_outlined),
          //           ),
          //         ), //IconButton
          //       ], //<Widget>[]
          //     ), //SliverAppBar
          //     // SliverList(
          //     //   delegate: SliverChildDelegate(), //SliverChildBuildDelegate
          //     // ) //SliverList
          //   ], //<Widget>[]
          // )
        )
    );
  }
  getDrawer(){
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        DrawerHeader(
          child: Text("Header"),
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/homeicon.png",scale: 4.2,),
          title: const Text(' Home ',style: TextStyle(color: CustomColors.primaryColor)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/rideicon.png",scale: 4.2,),
          title: const Text('Rides',style: TextStyle(color: CustomColors.primaryColor)),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => RequestinfoScreens()),
            // );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/abouticon.png",scale: 4.2,),
          title: const Text(' My Profile ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => UserProfileScreen()),
            // );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/acomondationicon4.png",scale: 4.2,),
          title: const Text(' Accommodation ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => StoryDemo()),
            // );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/tiffinicon5.png",scale: 4.2,),
          title: const Text(' Tiffin Center  ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => RideScreen()),
            // );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/festival6.png",scale: 4.2,),
          title: const Text(' Festivals & Events ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/holyplace7.png",scale: 4.2,),
          title: const Text(' Holy Places ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/indianstore8.png",scale: 4.2,),
          title: const Text(' Indian Store ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/videoicon.png",scale: 4.2,),
          title: const Text(' Video ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/abouticon.png",scale: 4.2,),
          title: const Text(' About ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
        ListTile(
          leading: Image.asset("assets/drawerassets/settingicon.png",scale: 4.2,),
          title: const Text(' Settings ',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),

        ListTile(
          leading: Image.asset("assets/drawerassets/logout.png",scale: 4.2,),

          title: const Text('LogOut',style: TextStyle(color: CustomColors.primaryColor),),
          onTap: () {
            // Alert(
            //   context: context,
            //   title: "Log out",
            //   desc: "Are you sure you want to log out?",
            //   style: AlertStyle(
            //       isCloseButton: false,
            //       descStyle:
            //       TextStyle(fontFamily: "MuliRegular", fontSize: 15),
            //       titleStyle: TextStyle(fontFamily: "MuliRegular")),
            //   buttons: [
            //     DialogButton(
            //       child: Text(
            //         "OK",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 16,
            //             fontFamily: "MuliRegular"),
            //       ),
            //       onPressed: () async {
            //         setState(() {
            //           userID = '';
            //           userEmail = '';
            //           userMobile = '';
            //           likedProduct = [];
            //           likedService = [];
            //         });
            //         // signOutGoogle();
            //         //signOutFacebook();
            //         preferences!
            //             .remove(SharedPreferencesKey.LOGGED_IN_USERRDATA)
            //             .then((_) {
            //           Navigator.of(context).pushAndRemoveUntil(
            //             MaterialPageRoute(
            //               builder: (context) => Welcome2(),
            //             ),
            //                 (Route<dynamic> route) => false,
            //           );
            //         });
            //
            //         Navigator.of(context, rootNavigator: true).pop();
            //       },
            //       color: backgroundblack,
            //       // color: Color.fromRGBO(0, 179, 134, 1.0),
            //     ),
            //     DialogButton(
            //       child: Text(
            //         "Cancel",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 16,
            //             fontFamily: "MuliRegular"),
            //       ),
            //       onPressed: () {
            //         Navigator.of(context, rootNavigator: true).pop();
            //       },
            //       color: backgroundblack,
            //       // gradient: LinearGradient(colors: [
            //       //   Color.fromRGBO(116, 116, 191, 1.0),
            //       //   Color.fromRGBO(52, 138, 199, 1.0)
            //       // ]),
            //     ),
            //   ],
            // ).show();
          },
        ),
      ],
    );
  }

}
