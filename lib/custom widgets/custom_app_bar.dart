import 'package:flutter/material.dart';
import 'package:newapp/presentation/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool automaticallyImplyLeading;
  const CustomAppBar(
      {Key? key, required this.title, required this.automaticallyImplyLeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.blueGrey),
      // automaticallyImplyLeading: this.automaticallyImplyLeading,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "Nunito",
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColor.VIOLET,
        ),
      ),
      backgroundColor: Colors.white60,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);
}
