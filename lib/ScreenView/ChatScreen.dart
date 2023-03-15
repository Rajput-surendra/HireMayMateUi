import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/ColorClass.dart';
import '../buttons/CustomAppBar.dart';
import '../buttons/CustomCard.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.TransparentColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(text: "Chat",),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      height:MediaQuery.of(context).size.height/1.4,
                      child: ListView.builder(
                        // physics:  NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: chatCard.length,
                          itemBuilder: (context, index) {
                            return chatUi(context,index,chatCard);
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
