import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/firstScreen/widgets/timeLine.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_app/value/string.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/child&pincel.dart';
import 'widgets/customAppbar.dart';
import 'widgets/downButton.dart';
import 'widgets/indicators.dart';
import 'widgets/underImageItem.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: ListView(
        children: [
          Container(
            width: ScreenUtil().setWidth(360),
            height: ScreenUtil().setHeight(203),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(eventImg),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: ScreenUtil().setHeight(20),
                horizontal: ScreenUtil().setWidth(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(30),
                        height: ScreenUtil().setHeight(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            lightBulbSvg,
                            width: ScreenUtil().setWidth(20),
                            height: ScreenUtil().setHeight(20),
                          ),
                        ),
                      ),
                      Container(
                        width: ScreenUtil().setWidth(26),
                        height: ScreenUtil().setHeight(23),
                        child: Image.asset(
                          'assets/images/camera.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            dinnerSvg,
                            width: ScreenUtil().setWidth(32),
                            height: ScreenUtil().setHeight(24),
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  child: Text(
                                    'Dinner &',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(12),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    ' Kulinarisches',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            'Wine Tasting Dinner',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(20),
                            ),
                          ),
                          Text(
                            'Du nimmst teil',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UnderImageItem(
                  title: '1000',
                  assetNameSvg: shapeSvg,
                ),
                UnderImageItem(
                  title: '0',
                  assetNameSvg: markedSvg,
                ),
                UnderImageItem(
                  title: '4/10',
                  assetNameSvg: placesSvg,
                ),
                UnderImageItem(
                  title: '25-35',
                  assetNameSvg: ageSvg,
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                left: ScreenUtil().setWidth(22),
                top: ScreenUtil().setHeight(22),
                child: Dash(
                    direction: Axis.vertical,
                    length: ScreenUtil().setHeight(1090),
                    dashLength: 5,
                    dashColor: Colors.red),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Timeline(
                    children: <Widget>[
                      ChildAndPincel(
                          child: Column(
                        children: [
                          Text(
                            'Start: Do, 12. Nov. 2020 18:00',
                            style: kTextStyleBlack,
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(5),
                          ),
                          Text(
                            'Ende: Do, 12. Nov. 2020 20:00',
                            style: kTextStyleBlack,
                          ),
                        ],
                      )),
                      ChildAndPincel(
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: ScreenUtil().setHeight(5)),
                          child: Container(
                            height: ScreenUtil().setHeight(155),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(mapImg),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ChildAndPincel(
                          child: Text(
                        'Lust auf italienisches Essen mit einem\n guten Gläschen Wein? Sed ut perspiciatis unde omnis iste natus error sit\n voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab.',
                        style: kTextStyleBlack,
                      )),
                      ChildAndPincel(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Interessen:',
                              style: kTextStyleBlack,
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(10),
                            ),
                            Container(
                              width: double.infinity,
                              height: ScreenUtil().setHeight(130),
                              child: GridView(
                                physics: NeverScrollableScrollPhysics(),
                                primary: false,
                                shrinkWrap: true,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        kochenImg,
                                      ),
                                      Text(
                                        'Kochen',
                                        style: kTextStyleBlack.copyWith(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(kochenImg),
                                      Text(
                                        'Kochen',
                                        style: kTextStyleBlack.copyWith(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(kochenImg),
                                      Text(
                                        'Kochen',
                                        style: kTextStyleBlack.copyWith(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(kochenImg),
                                      Text(
                                        'Kochen',
                                        style: kTextStyleBlack.copyWith(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(kochenImg),
                                      Text(
                                        'Kochen',
                                        style: kTextStyleBlack.copyWith(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(kochenImg),
                                      Text(
                                        'Kochen',
                                        style: kTextStyleBlack.copyWith(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(kochenImg),
                                      Text(
                                        'Kochen',
                                        style: kTextStyleBlack.copyWith(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(kochenImg),
                                      Text(
                                        'Kochen',
                                        style: kTextStyleBlack.copyWith(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                ],
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 0.9,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 5,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(18)),
                          child: Column(
                            children: [
                              Image.asset(
                                eventImg,
                                width: ScreenUtil().setWidth(276),
                                height: ScreenUtil().setHeight(124),
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(8),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    eventImg,
                                    width: ScreenUtil().setWidth(134),
                                    height: ScreenUtil().setHeight(124),
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(8),
                                  ),
                                  Image.asset(
                                    eventImg,
                                    width: ScreenUtil().setWidth(134),
                                    height: ScreenUtil().setHeight(124),
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              )
                            ],
                          )),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(18)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kommentare:',
                                  style: kTextStyleBlack,
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(5),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(15)),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: kOrangeLight),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Antonia:',
                                            style: kTextStyleBlack.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: ScreenUtil().setSp(12),
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(16),
                                          ),
                                          Container(
                                            constraints: BoxConstraints(
                                              maxHeight:
                                                  ScreenUtil().setHeight(42),
                                              maxWidth:
                                                  ScreenUtil().setWidth(211),
                                            ),
                                            child: Text(
                                              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem...',
                                              style: kTextStyleBlack.copyWith(
                                                fontSize:
                                                    ScreenUtil().setSp(12),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(5),
                                          ),
                                          Text(
                                            'Weiterlesen:',
                                            style: kTextStyleBlack.copyWith(
                                              fontWeight: FontWeight.w300,
                                              fontSize: ScreenUtil().setSp(10),
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(16),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: ScreenUtil().setWidth(10),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            thumbUpSvg,
                                            height: ScreenUtil().setHeight(18),
                                          ),
                                          SvgPicture.asset(
                                            thumbDownSvg,
                                            height: ScreenUtil().setHeight(18),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(18)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(15)),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: kOrangeLight),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: ScreenUtil().setHeight(10),
                                          ),
                                          Text(
                                            'Matias:',
                                            style: kTextStyleBlack.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: ScreenUtil().setSp(12),
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(5),
                                          ),
                                          Container(
                                            constraints: BoxConstraints(
                                              maxHeight:
                                                  ScreenUtil().setHeight(28),
                                              maxWidth:
                                                  ScreenUtil().setWidth(211),
                                            ),
                                            child: Text(
                                              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium.',
                                              style: kTextStyleBlack.copyWith(
                                                fontSize:
                                                    ScreenUtil().setSp(12),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(16),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: ScreenUtil().setWidth(10),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            thumbUpSvg,
                                            height: ScreenUtil().setHeight(18),
                                          ),
                                          SvgPicture.asset(
                                            thumbDownSvg,
                                            height: ScreenUtil().setHeight(18),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(18)),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'mehr anzeigen'.toUpperCase(),
                              style: kTextStyleBlack.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: ScreenUtil().setSp(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(80),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(18),
                        ),
                        //// on click change
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                DownButton(
                                  title: 'teilen',
                                  selected: false,
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(10),
                                ),
                                DownButton(
                                  title: 'markieren',
                                  selected: false,
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(10),
                                ),
                                DownButton(
                                  title: 'TEILNEHMEN',
                                  selected: true,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(30),
                            ),
                          ],
                        ),
                      ),
                    ],
                    indicators: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                        color: Colors.white,
                        child: Indicator(
                          assetNameSvg: calendarSvg,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                        color: Colors.white,
                        child: Indicator(
                          assetNameSvg: mapSvg,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                        color: Colors.white,
                        child: Indicator(
                          assetNameSvg: aboutSvg,
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                        color: Colors.white,
                        child: Indicator(
                          assetNameSvg: interestIconSvg,
                        ),
                      ),
                      Indicator(
                        assetNameSvg: imageSvg,
                      ),
                      Indicator(
                        assetNameSvg: commentIconSvg,
                      ),
                      Indicator(
                        assetNameSvg: flagActionsSvg,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
