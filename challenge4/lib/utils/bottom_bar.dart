import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottomItem("assets/icons/calendar.svg", "Today", false),
          bottomItem("assets/icons/gym.svg", "All Exercises", true),
          bottomItem("assets/icons/Settings.svg", "Settings", false),
        ],
      ),
    );
  }
}

Widget bottomItem(String asset, String title, bool isActive) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SvgPicture.asset(
        asset,
        height: 32,
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 18,
            color: isActive ? Color(0XFFE68342) : Color(0XFF222B45)),
      ),
    ],
  );
}
