import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ModelWork extends StatefulWidget {
  const ModelWork({super.key});

  @override
  State<ModelWork> createState() => _ModelWorkState();
}

class _ModelWorkState extends State<ModelWork> {
  PageController _pageController = PageController();
  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        MakePage(),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}

Widget MakePage() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "lib/img/img1.jpg",
            ),
            fit: BoxFit.cover)),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2)
              ],
              begin: Alignment.bottomRight,
              stops: [0.3, 0.9])),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "1",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "/4",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "USA",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "4.0",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(2300)",
                      style: TextStyle(color: Colors.white54),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                  style: TextStyle(color: Colors.white, height: 2.5),
                ),
                TextButton(
                    onPressed: null,
                    child: Text(
                      "READ MORE",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))
              ],
            ))
          ],
        ),
      ),
    ),
  );
}
