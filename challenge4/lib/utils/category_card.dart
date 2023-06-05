import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final String asset;
  final String categoryName;
  Function()? press;
  CategoryCard({
    super.key,
    required this.asset,
    required this.categoryName,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                spreadRadius: -23,
                blurRadius: 30,
                color: Color(0XFFE6E6E6))
          ],
          color: Colors.white,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(asset),
                  Text(
                    categoryName,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w900),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
