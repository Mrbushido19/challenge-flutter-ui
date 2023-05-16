import 'package:challenge1/myWork/myCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modelcode.dart';

void main() {
  runApp(MaterialApp(
    title: 'Challenge 1',
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        leading: const IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: null,
        ),
      ),
      body: const SafeArea(child: MyCode()),
    );
  }
}
