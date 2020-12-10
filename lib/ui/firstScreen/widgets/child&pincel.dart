

import 'package:flutter/material.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_app/value/string.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChildAndPincel extends StatelessWidget {
 final Widget child ;
 final Function onTap ;
  ChildAndPincel({@required this.child,this.onTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Padding(
          padding:  EdgeInsets.fromLTRB(
              ScreenUtil().setWidth(10),
              ScreenUtil().setHeight(12)
              ,ScreenUtil().setWidth(12)
              ,0),
          child: child
        ),
        Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: onTap,
            child: Padding(
              padding:  EdgeInsets.only(top:ScreenUtil().setHeight(8) ,right: ScreenUtil().setWidth(6)),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: kOrange,
                        width: 3
                    )
                ),
                child: Image.asset(
                  penImg,
                  width: ScreenUtil().setWidth(17),
                  height: ScreenUtil().setHeight(14),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
