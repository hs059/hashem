import 'package:flutter/material.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_screenutil/screenutil.dart';

class DownButton extends StatelessWidget {
  final bool selected;

  final String title;

  DownButton({this.selected, this.title});

  @override
  Widget build(BuildContext context) {
    return selected
        ? SizedBox(
            height: ScreenUtil().setHeight(28),
            width: ScreenUtil().setWidth(84),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Color(0xffC64225),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(
                  title.toUpperCase(),
                  style: kTextStyleBlack.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenUtil().setSp(10),
                      color: Colors.white),
                ),
              ),
            ),
          )
        : Text(
            title.toUpperCase(),
            style: kTextStyleBlack.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: ScreenUtil().setSp(10),
            ),
          );
  }
}
