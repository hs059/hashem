


import 'package:flutter/material.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonSecondScreen extends StatelessWidget {
  final String title  ;
  final bool selected ;
  ButtonSecondScreen({this.title,this.selected = false});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().setHeight(60),
      width: ScreenUtil().setWidth(60),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: selected?Color(0xffF99A0C):Color(0xffC4C4C4),
            border: Border.all(
                color: Colors.black
            )
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              color: kBlackText,
              fontSize: ScreenUtil().setSp(15),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
