import 'package:flutter/material.dart';
import 'package:my_app/routes/routers_path.dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/styled_components/styled_export.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, size: 28))
                ],
              ),
              const Spacer(flex: 2),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppStrings.createYourAccount,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Spacer(flex: 1),
              Form(
                child: Column(
                  children: [
                    StyledInputTextFormField(
                      controller: emailController,
                      hintText: AppStrings.email,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    StyledInputPassFormField(
                      controller: passController,
                      hintText: AppStrings.password,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              StyledButtonDefault(
                text: AppStrings.signUp,
                colorText: AppColor.whiteColor,
                colorBtn: AppColor.blueColor500,
                onTap: () {},
              ),
              const Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        color: AppColor.greyColor100,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        AppStrings.orContinueWith,
                        style: TextStyle(
                          color: AppColor.greyColor500,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColor.greyColor100,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    StyledButtonWithAIcon(imageUrl: AppIcons.googleIcon),
                    SizedBox(width: 20),
                    StyledButtonWithAIcon(imageUrl: AppIcons.facebookIcon),
                    SizedBox(width: 20),
                    StyledButtonWithAIcon(imageUrl: AppIcons.appleIcon)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppStrings.haveAnAccount,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: AppColor.greyColor500,
                    ),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, RoutersPath.loginRoute);
                    },
                    child: const Text(
                      AppStrings.signIn,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColor.blueColor500,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
