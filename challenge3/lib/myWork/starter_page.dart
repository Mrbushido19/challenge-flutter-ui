import 'package:challenge3/main.dart';
import 'package:challenge3/myWork/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StarterPage extends StatelessWidget {
  const StarterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Image.asset(
            "lib/assets/img/starter.jpg",
            fit: BoxFit.cover,
            scale: 2,
          ),
        ),
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black, Colors.black.withOpacity(0.2)],
                  begin: Alignment.bottomRight,
                  stops: [0.2, 1])),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(
                flex: 2,
              ),
              Text(
                "Taking Order \nFor Delivery",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "See restaurants nearby by \nadding location",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  width: double.infinity,
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [Colors.orange, Colors.yellow])),
                  child: Center(
                    child: Text(
                      "Start",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "New Deliver to Your Door 24/7",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
