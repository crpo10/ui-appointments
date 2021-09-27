import 'package:appoimentapp/src/utils/colors.dart';
import 'package:appoimentapp/src/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: CustomAppBar(
              leadingIcon: Icon(
                Icons.short_text,
              ),
              leadingFunction: () {},
              trailingIcon: Icon(
                Icons.calendar_today_outlined,
              ),
              trailingFunction: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 30,
            ),
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: height * 0.03,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: Text(
              'Dr. Peterson',
              style: TextStyle(
                fontSize: height * 0.04,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
