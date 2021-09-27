import 'package:appoimentapp/src/pages/home_page.dart';
import 'package:appoimentapp/src/utils/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

@immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomePage(),
      theme: themeData.copyWith(
        scaffoldBackgroundColor: CustomColors.white,
      ),
    );
  }
}
