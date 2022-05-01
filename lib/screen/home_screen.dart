import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_template/screen/drawer_screen.dart';
import 'package:ui_template/widget/home/card_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'home-screen';
  final double silderval = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 6.w),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset('assets/images/Page 1.png'),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Column(
                      children: const [
                        Text(
                          'Whitney Leon',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Welcome back !',
                          style: TextStyle(
                            fontSize: 10,
                            color: Color(0XFF7B7F9E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40.w,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(DrawerScreen.routeName);
                        },
                        child: Image.asset('assets/images/Union.png')),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w),
                child: Stack(
                  children: [
                    Container(
                      width: 90.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0XFFDAD7E8),
                      ),
                      child: Transform.rotate(
                        // angle: silderval,
                        angle: 0.1183603884139151,
                        child: Container(
                          width: 20.w,
                          height: 10.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0XFF55418E),
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 3.h, horizontal: 10.w),
                            child: const Text(
                              'We updated your scooter',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: const Text(
                              'Everything your scooter needed \n\n'
                              'we did it for you.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ]),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 50.w,
                            top: 5.h,
                          ),
                          child: Image.asset('assets/images/baiscl.png'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: Container(
                  height: 12.h,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFFA500),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        const Text(
                          'Whitney’s Scooter',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        const Text(
                          'Locked',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Container(
                        padding: EdgeInsets.all(2.h),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 3,
                            color: const Color(0XFFE49401),
                          ),
                        ),
                        child: Image.asset('assets/images/lock.png'))
                  ]),
                ),
              ),
              SizedBox(
                height: 39.h,
                child: ListView(children: [
                  Row(
                    children: const [
                      CardItem(
                          image: 'assets/images/G1.png',
                          titel: 'Total distance',
                          yalloTitel: '17.8 KM'),
                      CardItem(
                          image: 'assets/images/charging.png',
                          titel: 'Total battery',
                          yalloTitel: '100%'),
                    ],
                  ),
                  Row(
                    children: const [
                      CardItem(
                          image: 'assets/images/zap on.png',
                          titel: 'Average Speed',
                          yalloTitel: '45 Km/h'),
                      CardItem(
                          image: 'assets/images/share 2.png',
                          titel: 'Ride Updated',
                          yalloTitel: '1 day ago.'),
                    ],
                  ),
                ]),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

/*
Slider(
              min: 0,
              max: 3.14 * 2,
              value: silderval,
              onChanged: (val) {
                setState(() {
                  silderval = val;
                  // log('$val');
                });
              }),
*/