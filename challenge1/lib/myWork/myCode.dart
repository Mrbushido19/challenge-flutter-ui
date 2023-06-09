import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyCode extends StatelessWidget {
  const MyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Trouvez votre",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Inspiration",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(
                      244,
                      243,
                      243,
                      1,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black87,
                      ),
                      hintText: "Que cherchez vous...",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Promo Today",
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                promoCard("image/img1.jpg"),
                promoCard("image/img1.jpg"),
                promoCard("image/img1.jpg"),
                promoCard("image/img1.jpg"),
                promoCard("image/img1.jpg"),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('image/img2.jpg'), fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(0.1)
                    ],
                    begin: Alignment.bottomRight,
                    stops: [0.2, 0.9])),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Best Design",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2.6 / 3,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(0.2)
                ],
                begin: Alignment.bottomRight,
                stops: [0.2, 0.9])),
      ),
    ),
  );
}
