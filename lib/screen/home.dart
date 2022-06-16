import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/network/api.dart';
import 'package:newapp/presentation/color.dart';
import 'package:newapp/screen/routineList.dart';
import 'package:newapp/screen/teacher_list.dart';

import '../custom widgets/custom_app_bar.dart';
import 'dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);
  final _bottomNavigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.grid_view,
        color: AppColor.VIOLET,
      ),
      label: 'Dasboard',
    ),
    // BottomNavigationBarItem(
    //   icon: Icon(
    //     Icons.meeting_room,
    //     color: AppColor.VIOLET,
    //   ),
    //   label: 'Class',
    // ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
        color: AppColor.VIOLET,
      ),
      label: 'Teacher',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        children: [
          // DashboardPage(),
          RoutinePage(),
          TeacherList(),
        ],
      ),
      appBar: CustomAppBar(
        title: "Islington College",
        automaticallyImplyLeading: true,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     IslingtonApiService().getList();
      //   },
      //   backgroundColor: Colors.green,
      //   child: const Icon(Icons.navigation),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: AppColor.BEIGE,
        //backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedLabelStyle: TextStyle(fontFamily: 'Cinzel'),
        selectedLabelStyle: TextStyle(
            fontFamily: 'Cinzel', fontSize: 15, fontWeight: FontWeight.bold),
        selectedItemColor: AppColor.VIOLET,
        currentIndex: _currentIndex,
        items: _bottomNavigationBarItems,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
