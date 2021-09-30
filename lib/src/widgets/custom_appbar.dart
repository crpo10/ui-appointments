import 'package:appoimentapp/src/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    Key? key,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.leadingFunction,
    required this.trailingFunction,
    this.text,
    required this.condition,
  }) : super(key: key);

  final VoidCallback leadingFunction, trailingFunction;
  final Icon leadingIcon, trailingIcon;
  bool condition = false;
  final String? text;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        width: double.infinity,
        height: height * 0.05,
        child: Row(
          children: [
            IconButton(
              icon: leadingIcon,
              onPressed: leadingFunction,
            ),
            condition == false
                ? SizedBox.shrink()
                : Text(
                    text!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: CustomColors.white.withOpacity(.8),
                      fontSize: height * 0.02,
                    ),
                  ),
            Spacer(),
            IconButton(
              icon: trailingIcon,
              onPressed: trailingFunction,
            )
          ],
        ),
      ),
    );
  }
}
