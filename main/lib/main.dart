import 'package:flutter/material.dart';
import 'Data.dart';
import 'Mb.dart';
import 'HompePage.dart';
main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}