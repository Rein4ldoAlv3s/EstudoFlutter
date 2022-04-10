import 'package:flutter/material.dart';

import 'home_page.dart';

class Widy extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}