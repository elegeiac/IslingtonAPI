import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/presentation/color.dart';

import '../custom widgets/custom_teacher_card.dart';
import '../network/api.dart';

class TeacherList extends StatefulWidget {
  const TeacherList({Key? key}) : super(key: key);

  @override
  State<TeacherList> createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {
  String userEntry = "";
  String dropdown = "SUN";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: size.width * 0.95,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // color: AppColor.LBLUE,
                    gradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.blue.withOpacity(0.3),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    title: TextField(
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Nunito",
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          labelText: "Lecturer",
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: "Nunito",
                            fontSize: 12,
                          )),
                      onChanged: (text) {
                        setState(() {
                          userEntry = text.toUpperCase();
                        });
                        print('First text field: $text');
                      },
                    ),
                  ),
                ),
                Container(
                  // height: 35,
                  width: size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    // color: AppColor.LBLUE,
                    gradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.blue.withOpacity(0.3),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: DropdownButton<String>(
                      dropdownColor: Colors.black.withOpacity(0.8),
                      isExpanded: true,
                      value: dropdown,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                      ),
                      elevation: 10,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdown = newValue!.toString();
                        });
                      },
                      items: <String>[
                        'SUN',
                        'MON',
                        'TUE',
                        'WED',
                        'THU',
                        'FRI',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                FutureBuilder(
                    future: IslingtonApiService().getList(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                            children:
                                List.generate(snapshot.data!.length, (index) {
                          final data = snapshot.data![index];
                          var teacherName =
                              data["userDto"]["name"].toUpperCase();
                          return teacherName.contains(userEntry) &&
                                  data["day"] == dropdown
                              ? TeacherCard(
                                  classType: data["classType"],
                                  startTime: data["startTime"],
                                  endTime: data["endTime"],
                                  module: data["moduleDto"]["name"],
                                  teacher: data["userDto"]["name"],
                                  code: data["moduleDto"]["code"],
                                  block: data["roomDto"]["block"],
                                  room: data["roomDto"]["name"],
                                )
                              : SizedBox(
                                  height: 0,
                                );
                        }));
                      } else if (snapshot.hasError) {
                        return Text(snapshot.error.toString());
                      } else {
                        return const CircularProgressIndicator();
                      }
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
