
import 'package:flutter/material.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Indicator extends StatelessWidget {
  final String assetNameSvg ;
  Indicator({this.assetNameSvg});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SvgPicture.asset(
        assetNameSvg,
        width: ScreenUtil().setWidth(32),
        height: ScreenUtil().setHeight(24),
        color: kOrange,
      ),
    );
  }
}
