import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:my_app/routes/routers_path.dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/screens/onboarding_screen.dart/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // late Animation<double> animation;
  // late AnimationController controller;
  @override
  void initState() {
    super.initState();
    // controller =
    //     AnimationController(duration: const Duration(seconds: 2), vsync: this);
    // animation = Tween<double>(begin: 0, end: 400).animate(controller)
    //   ..addListener(() {
    //     setState(() {});
    //   });
    // controller.forward();
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushNamed(context, RoutersPath.onboardingRoute);
    // });
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                ImagesString.logoImage,
              ),
            ),
            Positioned(
              top: height * 0.6,
              left: width * 0.1,
              child: SvgPicture.asset(AppIcons.personIcon),
            ),
            Positioned(
              top: height * 0.2,
              left: width * 0.14,
              child: SvgPicture.asset(AppIcons.personIcon),
            ),
            Positioned(
              top: height * 0.05,
              left: width * 0.8,
              child: SvgPicture.asset(AppIcons.personIcon),
            ),
            Positioned(
              top: height * 0.4,
              left: width * 0.8,
              child: SvgPicture.asset(AppIcons.personIcon),
            ),
            Positioned(
              top: height * 0.8,
              left: width * 0.5,
              child: SvgPicture.asset(AppIcons.personIcon),
            ),
            Positioned(
              top: height * 0.55,
              left: width * 0.4,
              child: SvgPicture.asset(AppIcons.personIcon),
            ),
            Positioned(
              top: height * 0.4,
              left: width * 0.3,
              child: SvgPicture.asset(
                AppIcons.personIcon,
                height: 10,
              ),
            ),
            Positioned(
              top: height * 0.7,
              left: width * 0.8,
              child: SvgPicture.asset(AppIcons.personIcon),
            ),
          ],
        ),
      ),
    );
  }
}
