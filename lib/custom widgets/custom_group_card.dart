import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../presentation/color.dart';

class ClassCard extends StatefulWidget {
  final String? classType;
  final String? startTime;
  final String? duration;
  final String? module;
  final String? code;
  final String? teacher;
  final String? block;
  final String? room;
  final String? groups;

  // final AudioElement? narration;
  const ClassCard(
      {this.classType,
      this.startTime,
      this.duration,
      this.module,
      this.code,
      this.teacher,
      this.block,
      this.room,
      this.groups});
  @override
  _ClassCardState createState() => _ClassCardState();
}

class _ClassCardState extends State<ClassCard> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            padding: EdgeInsets.all(10),
            width: 400,
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: AppColor.LBLUE,
              gradient: LinearGradient(colors: [
                Colors.white.withOpacity(0.2),
                Colors.blue.withOpacity(0.3),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text('Module:',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
                Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.topLeft,
                    child: Text(widget.module!,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nunito",
                            fontSize: 16,
                            fontWeight: FontWeight.bold))),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text('Module Code:',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(widget.code!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text('Start Time:',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        alignment: Alignment.topLeft,
                        child: Text(widget.startTime!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text("Duration: ",
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(widget.duration!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                    Container(
                        margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                        child: Text("hours",
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text('Type: ',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(widget.classType!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text('Lecturer: ',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(widget.teacher!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text('Block: ',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Text(widget.block!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text('Room: ',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(widget.room!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.topLeft,
                        child: Text('Groups: ',
                            style: TextStyle(
                                color: Colors.white70,
                                fontFamily: "Nunito",
                                fontSize: 14,
                                fontWeight: FontWeight.bold))),
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(widget.groups!,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
