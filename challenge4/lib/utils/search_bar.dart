import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search...",
            border: InputBorder.none,
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              width: 32,
            )),
      ),
    );
  }
}
