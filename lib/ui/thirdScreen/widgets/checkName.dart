

import 'package:flutter/material.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckName extends StatelessWidget {
  final String title  ;
  final bool selected ;
  CheckName({this.title,this.selected = false});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          height: ScreenUtil().setHeight(40),
          width: ScreenUtil().setWidth(40),
          decoration: BoxDecoration(
            color: selected?Color(0xffC4C4C4):Colors.white,
            shape:BoxShape.circle ,
            border: Border.all(color: Colors.black, width: 2),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(20),
        ),
        Text(
          title,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            color: kBlackText,
            fontSize: ScreenUtil().setSp(20),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
