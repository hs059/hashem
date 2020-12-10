


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/thirdScreen/widgets/checkName.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_app/value/string.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(50),
              child: Container(
                alignment: Alignment.centerRight,
              child:  Image.asset(
                'assets/images/image 1.png',
                  width: ScreenUtil().setWidth(76),
                  height: ScreenUtil().setHeight(22),
                ),
              ),
            ),
            Container(
              height: ScreenUtil().setHeight(30),
              width: double.infinity,
              color: Color(0xffC204C6),
              alignment: Alignment.center,
              child: Text(
                'Popup - participants',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: ScreenUtil().setSp(15),
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(12),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(15),
              ),
              child: Stack(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(375),
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      border: Border.all(color: kOrangeLight),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CheckName(title: 'Antonio',selected: true,),
                        CheckName(title: 'Laura',),
                        CheckName(title: 'Rosdale',),
                        CheckName(title: 'Mustafa',),
                        CheckName(title: 'Kumar',),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Icon(Icons.clear,color: Colors.black,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
