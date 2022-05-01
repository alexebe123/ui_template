import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_template/screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = 'splash-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF55418E),
      body: SafeArea(
        child: ListView(
          children: [
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Image.asset('assets/images/Group 15.png'),
                  ),
                  const Text(
                    'Rockit',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Text(
                'Your scooter in ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: const Text(
                  'one app',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              Image.asset('assets/images/illustration.png'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: const Text(
                  'Everything you need to know about ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: const Text(
                  'your scooter is available here in',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: const Text(
                  ' your app',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(HomeScreen.routeName);
                    },
                    child: Image.asset('assets/images/get started.png')),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
