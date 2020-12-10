


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/secondScreen/widgets/buttonSecondScreen.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: ScreenUtil().setHeight(50),
          ),
          Container(
            height: ScreenUtil().setHeight(30),
            width: double.infinity,
            color: Color(0xffC204C6),
            alignment: Alignment.center,
            child: Text(
              'Popup - share',
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: ScreenUtil().setSp(15),
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(130),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(15),
            ),
            child: Stack(
              children: [
                Container(
                  height: ScreenUtil().setHeight(198),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(50)),
                  decoration: BoxDecoration(
                    border: Border.all(color: kOrangeLight),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonSecondScreen(title: 'FB',selected: true,),
                      ButtonSecondScreen(title: 'Insta',),
                      ButtonSecondScreen(title: 'Whatsapp',),
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
    );
  }
}
