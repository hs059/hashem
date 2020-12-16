import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/secondScreen/widgets/buttonSecondScreen.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String buttonSecond = 'FB';

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: kOrangeLight),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          height: ScreenUtil().setHeight(100),
          child: Stack(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: ButtonSecondScreen(
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          size: 30,
                          color: Colors.white,
                        ),
                        selected: buttonSecond == 'FB',
                      ),
                      onTap: () {
                        buttonSecond = 'FB';
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: ButtonSecondScreen(
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                          color: Colors.white,
                        ),
                        selected: buttonSecond == 'Insta',
                      ),
                      onTap: () {
                        buttonSecond = 'Insta';
                        setState(() {});
                      },
                    ),
                    GestureDetector(
                      child: ButtonSecondScreen(
                        child: Icon(
                          FontAwesomeIcons.whatsapp,
                          size: 30,
                          color: Colors.white,
                        ),
                        selected: buttonSecond == 'Whatsapp',
                      ),
                      onTap: () {
                        buttonSecond = 'Whatsapp';
                        setState(() {});
                      },
                    ),
                  ],
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
              ),
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.clear,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
