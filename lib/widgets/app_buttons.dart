import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool isIcon;

  AppButtons({
    Key? key,
    this.isIcon = false,
    this.text = "Hi",
    this.icon,
    required this.color,
    required this.backgroundColor,
    required this.size,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(
              child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppText(text: text!, color: color)),
            )
          : Center(
              child: Icon(icon, color: color),
            ),
    );
  }
}
