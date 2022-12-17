import 'package:flutter/material.dart';
import 'package:my_app/routes/routers_path.dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/styled_components/styled_export.dart';

class LetsInScreen extends StatelessWidget {
  const LetsInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: const [Icon(Icons.arrow_back, size: 28)],
              ),
              const Spacer(),
              const Text(
                AppStrings.letsYouIn,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              StyledButtonWithIconDefault(
                iconUrl: AppIcons.facebookIcon,
                text: AppStrings.continueWithFB,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              StyledButtonWithIconDefault(
                iconUrl: AppIcons.googleIcon,
                text: AppStrings.continueWithGoogle,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              StyledButtonWithIconDefault(
                iconUrl: AppIcons.appleIcon,
                text: AppStrings.continueWithApple,
                onTap: () {},
              ),
              const SizedBox(height: 40),
              Row(
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
                      AppStrings.or,
                      style: TextStyle(
                        color: Colors.grey,
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
                  )
                ],
              ),
              const SizedBox(height: 40),
              StyledButtonDefault(
                text: AppStrings.signInWithPass,
                colorText: AppColor.whiteColor,
                colorBtn: AppColor.blueColor500,
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, RoutersPath.loginRoute);
                },
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppStrings.doNotHaveAnAccount,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutersPath.signUpRoute);
                    },
                    child: const Text(
                      AppStrings.signUp,
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
