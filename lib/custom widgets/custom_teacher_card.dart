import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../presentation/color.dart';

class TeacherCard extends StatefulWidget {
  final String? classType;
  final String? startTime;
  final String? endTime;
  final String? module;
  final String? code;
  final String? teacher;
  final String? block;
  final String? room;

  // final AudioElement? narration;
  const TeacherCard({
    this.classType,
    this.startTime,
    this.endTime,
    this.module,
    this.code,
    this.teacher,
    this.block,
    this.room,
  });
  @override
  _TeacherCardState createState() => _TeacherCardState();
}

class _TeacherCardState extends State<TeacherCard> {
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
            height: 250,
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
                        child: Text(widget.endTime!,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
