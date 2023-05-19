import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWork extends StatefulWidget {
  const MyWork({super.key});

  @override
  State<MyWork> createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        AppPage('lib/img/img2.jpg', 1),
        AppPage('lib/img/img2.jpg', 2),
        AppPage('lib/img/img1.jpg', 3),
      ],
    );
  }

  Widget AppPage(image, int page) {
    int totalPage = 4;
    return Stack(
      children: [
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.2),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.1, 0.8])),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              page.toString(),
              style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "/" + totalPage.toString(),
              style: GoogleFonts.nunito(color: Colors.white60, fontSize: 18),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Neorm \nMontaign",
                style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.amber,
                  ),
                  const Icon(
                    size: 15,
                    Icons.star,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "4.0",
                    style:
                        GoogleFonts.nunito(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    "(2300)",
                    style:
                        GoogleFonts.nunito(fontSize: 15, color: Colors.white54),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 220,
                child: Text(
                    style: GoogleFonts.nunito(color: Colors.white, height: 2.5),
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur'),
              ),
              TextButton(
                  onPressed: null,
                  child: Text(
                    "READ MORE",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))
            ],
          )),
        )
      ],
    );
  }
}
