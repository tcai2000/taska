import 'package:flutter/material.dart';
import 'package:my_app/views/screens/main_screen/widgets/bottom_navigation_widget.dart';
import 'package:my_app/views/screens/main_screen/widgets/main_body_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigationWidget(),
      body: SafeArea(child: MainBodyWidget()),
    );
  }
}
