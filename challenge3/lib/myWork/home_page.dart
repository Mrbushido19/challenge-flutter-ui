import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Image.asset(
                  "lib/assets/icon/shopIcon.png",
                  width: 48,
                ),
              ]),
              Text(
                "Food Delivery",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 75,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CatTitle("Burger", true),
                    CatTitle("Noodles", false),
                    CatTitle("Coffee", false)
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Free Delivery",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FoodCard("lib/assets/img/img1.jpg", 15.00, "Burger King"),
                    FoodCard("lib/assets/img/img2.jpg", 25.00, "Pizza King"),
                    FoodCard("lib/assets/img/img3.jpg", 5.00, "Pizza King")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CatTitle(String title, bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: 150,
      decoration: BoxDecoration(
          color: isActive ? Colors.amber : Colors.grey.withOpacity(0.7),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      )),
    );
  }

  Widget FoodCard(String image, num price, String name) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover),
      ),
      child: Container(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$$price',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(begin: Alignment.bottomLeft, colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.3)
              ]))),
    );
  }
}
