import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../network/api.dart';
import '../presentation/color.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    String dropdown = "M";
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 35,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: AppColor.LBLUE,
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdown,
                  icon: const Icon(
                    Icons.arrow_downward,
                  ),
                  elevation: 10,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdown = newValue!.toString();
                    });
                    print(dropdown);
                  },
                  items: <String>['SUN', 'MON', 'TUE', 'WED', '']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
