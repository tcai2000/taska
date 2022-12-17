import 'package:flutter/material.dart';

class StyledButtonDefault extends StatelessWidget {
  const StyledButtonDefault({
    Key? key,
    required this.text,
    required this.colorText,
    required this.colorBtn,
    this.fontSize = 16,
    this.radius = 50,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Color colorText;
  final Color colorBtn;
  final double? fontSize;
  final double radius;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: colorBtn,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: colorText,
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
