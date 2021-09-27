import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.leadingFunction,
    required this.trailingFunction,
  }) : super(key: key);

  final VoidCallback leadingFunction, trailingFunction;
  final Icon leadingIcon, trailingIcon;

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
