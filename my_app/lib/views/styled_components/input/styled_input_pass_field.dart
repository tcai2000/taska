import 'package:flutter/material.dart';
import 'package:my_app/views/constants/constants_export.dart';

class StyledInputPassFormField extends StatefulWidget {
  const StyledInputPassFormField(
      {Key? key, required this.controller, this.hintText = ""})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  State<StyledInputPassFormField> createState() =>
      _StyledInputPassFormFieldState();
}

class _StyledInputPassFormFieldState extends State<StyledInputPassFormField> {
  late TextFieldStatus statusTextField;
  TextEditingController controller = TextEditingController();
  bool showPass = false;
  @override
  void initState() {
    super.initState();
    statusTextField = TextFieldStatus.initial;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (value) {
        if (!value) {
          if (mounted) {
            setState(
              () {
                if (controller.text.trim() != "") {
                  statusTextField = TextFieldStatus.entered;
                } else {
                  statusTextField = TextFieldStatus.unFocus;
                }
              },
            );
          }
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        decoration: BoxDecoration(
            color: const Color(0xFFFAFAFA),
            borderRadius: BorderRadius.circular(20),
            border: statusTextField == TextFieldStatus.focus
                ? Border.all(color: AppColor.blueColor500)
                : null),
        child: Row(
          children: [
            Icon(
              Icons.lock_person_sharp,
              size: 24,
              color: statusTextField == TextFieldStatus.focus
                  ? AppColor.blueColor500
                  : statusTextField == TextFieldStatus.entered
                      ? AppColor.blackColor
                      : AppColor.greyColor500,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: TextFormField(
                controller: controller,
                obscureText: !showPass,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: statusTextField == TextFieldStatus.entered
                      ? AppColor.blackColor
                      : AppColor.blueColor500,
                  letterSpacing: 1.4,
                ),
                onTap: () {
                  if (mounted) {
                    setState(() {
                      statusTextField = TextFieldStatus.focus;
                    });
                  }
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 10.0,
                  ),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.greyColor500,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (mounted) {
                  setState(() {
                    showPass = !showPass;
                  });
                }
              },
              child: Icon(
                showPass ? Icons.visibility : Icons.visibility_off,
                size: 24,
                color: statusTextField == TextFieldStatus.focus
                    ? AppColor.blueColor500
                    : statusTextField == TextFieldStatus.entered
                        ? AppColor.blackColor
                        : AppColor.greyColor500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
