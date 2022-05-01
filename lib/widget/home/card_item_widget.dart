import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class CardItem extends StatelessWidget {
  const CardItem(
      {Key? key,
      required this.image,
      required this.titel,
      required this.yalloTitel})
      : super(key: key);
  final String titel;
  final String image;
  final String yalloTitel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
      child: Container(
        height: 18.h,
        width: 40.w,
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 2,
            color: const Color(0XFFE6E5F2),
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titel,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF55418E),
                  fontSize: 18,
                ),
              ),
              Image.asset(image),
              Text(
                yalloTitel,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0XFFFFA500),
                  fontSize: 18,
                ),
              ),
            ]),
      ),
    );
  }
}
