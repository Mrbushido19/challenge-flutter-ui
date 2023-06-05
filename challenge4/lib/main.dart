import 'package:challenge4/pages/detail_page.dart';
import 'package:challenge4/utils/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'utils/category_card.dart';
import 'utils/search_bar.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Demo",
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(color: Color(0XFFF5CEB8)),
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.centerLeft,
                          image: AssetImage(
                              "assets/icons/undraw_pilates_gpdb.png")))),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(
                            0xFFF2BEA1,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset("assets/icons/menu.svg"),
                      ),
                    ],
                  ),
                  Text(
                    "Good Morning Coulibaly",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SearchBar(),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: .85,
                      children: [
                        CategoryCard(
                          categoryName: "Meditation",
                          asset: "assets/icons/Meditation.svg",
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPage();
                            }));
                          },
                        ),
                        CategoryCard(
                          categoryName: "Meditation",
                          asset: "assets/icons/Meditation.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          categoryName: "Meditation",
                          asset: "assets/icons/Meditation.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          categoryName: "Meditation",
                          asset: "assets/icons/Meditation.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
        bottomNavigationBar: BottomBar());
  }
}
