


import 'package:flutter/material.dart';
import 'package:flutter_app/value/string.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UnderImageItem extends StatelessWidget {
 final String title ;
 final String assetNameSvg ;
  UnderImageItem({@required this.title,@required this.assetNameSvg});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: kTextStyleBlack,
        ),
        SizedBox(
          width: ScreenUtil().setWidth(5),
        ),
        SvgPicture.asset(
          assetNameSvg,
          width: ScreenUtil().setWidth(12),
          height: ScreenUtil().setHeight(15),

        ),
      ],
    );
  }
}
