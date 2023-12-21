import 'package:elimu_universite_mobile/config/themes.dart';
import 'package:elimu_universite_mobile/widgets/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class MessageViews extends StatefulWidget {
  const MessageViews({super.key});

  @override
  State<MessageViews> createState() => _MessageViewsState();
}

class _MessageViewsState extends State<MessageViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leading: customeIcon(EvaIcons.arrowIosBackOutline, iconSize: 30),
        title: customeTextStyle("Nate", size: 20, fontWeight: FontWeight.w600),
        elevation: 0.5,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  messageGroupModel(context),
                  messageGroupUser(context),
                  messageGroupModel(context),
                  messageGroupUser(context),
                  messageGroupModel(context),
                  messageGroupUser(context),
                  messageGroupModel(context),
                  messageGroupUser(context),
                ],
              )
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                customeIcon(EvaIcons.plusCircleOutline, iconSize: 30, color: black),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 5),
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: getColorFromHex("#ABAAAA"),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: const TextField(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Messages..."
                      ),
                    ),
                  ),
                ),
                customeIcon(EvaIcons.paperPlane, iconSize: 30, color: black)
              ],
            ),
          ),
          
        ],
      ),

    );
  }
}