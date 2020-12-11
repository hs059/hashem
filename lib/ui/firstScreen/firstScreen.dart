import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/models/Interessen.dart';
import 'package:flutter_app/ui/firstScreen/widgets/interessenItem.dart';
import 'package:flutter_app/ui/firstScreen/widgets/thumpWidget.dart';
import 'package:flutter_app/ui/firstScreen/widgets/timeLine.dart';
import 'package:flutter_app/ui/secondScreen/SecondScreen.dart';
import 'package:flutter_app/ui/thirdScreen/thirdScreen.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_app/value/navigator.dart';
import 'package:flutter_app/value/shadow.dart';
import 'package:flutter_app/value/string.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  String downButton  = 'TEILNEHMEN';
  bool firstLike ;
  bool secondLike ;
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
                GestureDetector(
                  onTap: () => kNavigatorPush(context, ThirdScreen()),
                  child: UnderImageItem(
                    title: '4/10',
                    assetNameSvg: placesSvg,
                  ),
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
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: ScreenUtil().setWidth(4),
                              ),
                              child: Text(
                                'Interessen:',
                                style: kTextStyleBlack,
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(10),
                            ),
                            Container(
                              width: double.infinity,
                              height: ScreenUtil().setHeight(140),
                              child: GridView.builder(
                                shrinkWrap: true,
                                primary: false,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 0.9,
                                  // mainAxisSpacing: 5,
                                  // crossAxisSpacing: 5,
                                ),
                                itemCount: allInteressen.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InteressenItem(title:allInteressen[index].title ,img: allInteressen[index].img,);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(18)),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/galerie-1.png',
                                width: ScreenUtil().setWidth(276),
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(8),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/galerie-2.png',
                                    width: ScreenUtil().setWidth(134),
                                    // height: ScreenUtil().setHeight(124),
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(8),
                                  ),
                                  Image.asset(
                                    'assets/images/galerie-3.png',
                                    width: ScreenUtil().setWidth(134),
                                    // height: ScreenUtil().setHeight(124),
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(20),
                              ),
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Kommentare:',
                                      style: kTextStyleBlack,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: kOrange,
                                              width: 2
                                          ),
                                        boxShadow: sShadowButton,
                                      ),
                                      child: Icon(FontAwesomeIcons.plus,color: Colors.black,)
                                    ),
                                  ],
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
                                      ThumpWidget(firstLike),
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
                                      ThumpWidget(secondLike),
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
                                GestureDetector(
                                  onTap: () {
                                    downButton = 'teilen';
                                    setState(() {

                                    });
                                  },
                                  child: DownButton(
                                    title: 'teilen',
                                    selected: downButton == 'teilen',
                                  ),
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(10),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    downButton = 'markieren';
                                    setState(() {

                                    });
                                  },
                                  child: DownButton(
                                    title: 'markieren',
                                    selected: downButton == 'markieren',
                                  ),
                                ),
                                SizedBox(
                                  width: ScreenUtil().setWidth(10),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    downButton = 'TEILNEHMEN';

                                    setState(() {

                                    });
                                  },
                                  child: GestureDetector(
                                    onTap: () => kNavigatorPush(context, SecondScreen()),
                                    child: DownButton(
                                      title: 'TEILNEHMEN',
                                      selected: downButton == 'TEILNEHMEN',
                                    ),
                                  ),
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
