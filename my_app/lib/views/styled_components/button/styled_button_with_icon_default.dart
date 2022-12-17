import 'package:flutter/material.dart';
import 'package:my_app/views/constants/constants_export.dart';

class StyledButtonWithIconDefault extends StatelessWidget {
  const StyledButtonWithIconDefault({
    Key? key,
    required this.text,
    required this.iconUrl,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final String iconUrl;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColor.greyColor100,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconUrl, height: 30),
            const SizedBox(width: 8.0),
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
