import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/blocs/bottom_navbar/bottom_navbar_cubit.dart';
import 'package:my_app/routes/routes.dart';
import 'package:my_app/views/constants/colors.dart';

import 'views/screens/screens_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavbarCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Taska Task Project Management',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.whiteColor,
          primarySwatch: Colors.blue,
          fontFamily: 'Rale way',
          backgroundColor: AppColor.whiteColor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.black,
          ),
        ),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: '/onboarding',
      ),
    );
  }
}
