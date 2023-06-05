import 'package:challenge4/utils/bottom_bar.dart';
import 'package:challenge4/utils/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(color: Color(0XFFC7B8F5)),
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("assets/icons/meditation_bg.png")))),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Meditation",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "3-10 MIN Course",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: size.width * .7,
                  child: Text(
                    "La Bible du Business pour faire décoller votre carriere sans passer par la case MBA",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  width: size.width * 0.6,
                  child: SearchBar(),
                ),
                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    sessionCard(
                      sessionNum: 1,
                      isDone: true,
                    ),
                    sessionCard(
                      sessionNum: 2,
                    ),
                    sessionCard(
                      sessionNum: 3,
                    ),
                    sessionCard(
                      sessionNum: 4,
                    ),
                    sessionCard(
                      sessionNum: 5,
                    ),
                    sessionCard(
                      sessionNum: 6,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  height: 100,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(children: [
                    SvgPicture.asset(
                      "assets/icons/Meditation_women_small.svg",
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Basics 2",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Spacer(),
                          Text("Start Now"),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset("assets/icons/Lock.svg")
                  ]),
                )
              ],
            ),
          ))
        ]),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class sessionCard extends StatelessWidget {
  final int sessionNum;
  bool isDone;
  sessionCard({
    super.key,
    required this.sessionNum,
    this.isDone = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 100,
        width: constraints.maxWidth / 2 - 10,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(0, 17),
              spreadRadius: -23,
              blurRadius: 30,
              color: Color(0XFFE6E6E6))
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  border: isDone ? null : Border.all(),
                  color: isDone ? Color(0XFF817DC0) : Colors.white,
                  shape: BoxShape.circle),
              child: Icon(Icons.play_arrow),
            ),
            Text(
              "Session $sessionNum",
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
      );
    });
  }
}
