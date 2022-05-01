import 'package:flutter/material.dart';
import 'package:ui_template/screen/drawer_screen.dart';
import 'package:ui_template/screen/home_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_template/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const DrawerScreen(),
        initialRoute: SplashScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          DrawerScreen.routeName: (context) => const DrawerScreen(),
          SplashScreen.routeName: (context) => const SplashScreen(),
        },
      );
    });
  }
}
