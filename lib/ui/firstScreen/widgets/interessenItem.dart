


import 'package:flutter/material.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_screenutil/screenutil.dart';

class InteressenItem extends StatelessWidget {
  final String img ;
  final String title ;
  InteressenItem({this.img, this.title});
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(

          child: Image.asset(
            img,
            width: ScreenUtil().setWidth(62),
            fit: BoxFit.contain,
          ),
        ),
        Text(
          title.toUpperCase(),
          style: kTextStyleBlack.copyWith(
              fontWeight: FontWeight.w300,
            fontSize: ScreenUtil().setSp(10),
height: 1.8
          ),
        )
      ],
    );
  }
}
