import 'package:flutter/material.dart';
import 'package:my_app/routes/routers_path.dart';
import 'package:my_app/views/constants/constants_export.dart';
import 'package:my_app/views/screens/lets_in_screen/lets_in_screen.dart';
import 'package:my_app/views/screens/onboarding_screen.dart/components/onboarding_widget_list.dart';
import 'package:my_app/views/styled_components/styled_export.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = onBoardingWidgetList.length - 1;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            children: [
              Flexible(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: ((value) {
                    setState(() {
                      _currentPage = value;
                    });
                  }),
                  children: onBoardingWidgetList,
                ),
              ),
              const SizedBox(height: 20),
              StyledButtonDefault(
                onTap: () {
                  if (_currentPage != _numPages - 1) {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  } else {
                    Navigator.of(context).pushNamed(RoutersPath.letsInRoute);
                  }
                },
                colorBtn: AppColor.blueColor500,
                colorText: AppColor.whiteColor,
                text: _currentPage != _numPages
                    ? AppStrings.next
                    : AppStrings.continueBtn,
              ),
              const SizedBox(height: 8),
              if (_currentPage != _numPages)
                StyledButtonDefault(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const LetsInScreen(),
                      ),
                    );
                  },
                  colorBtn: AppColor.blueColor100,
                  colorText: AppColor.blueColor500,
                  text: AppStrings.skip,
                ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
