import 'package:flutter/material.dart';

import 'myWork/starter_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Challenge 3",
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const app(),
  ));
}

class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StarterPage(),
    );
  }
}
