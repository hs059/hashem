import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/models/Interessen.dart';
import 'file:///E:/Programming/Dart/gitHup/hashemAAA/lib/ui/firstScreen/widgets/kommentare.dart';
import 'package:flutter_app/map2.dart';
import 'package:flutter_app/maps.dart';
import 'package:flutter_app/myProvider.dart';

import 'package:flutter_app/ui/firstScreen/widgets/interessenItem.dart';
import 'package:flutter_app/ui/firstScreen/widgets/thumpWidget.dart';
import 'package:flutter_app/ui/firstScreen/widgets/timeAndDate.dart';
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
import 'package:provider/provider.dart';
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
  String downButton = 'TEILNEHMEN';
  bool firstLike;
  String paper;
GlobalKey<FormState> formKey  = GlobalKey<FormState>();
  bool secondLike;

  DateTime dateStart = DateTime.now();

  DateTime dateEnd;

  @override
  Widget build(BuildContext context) {
    MyProvider myProvider = Provider.of<MyProvider>(context);
    MyProvider myProviderFalse =
        Provider.of<MyProvider>(context, listen: false);
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
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0))),
                        content: ThirdScreen(),
                      ),
                    );
                  },
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
                child: Padding(
                  padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(20)),
                  child: Dash(
                      direction: Axis.vertical,
                      length: MediaQuery.of(context).size.height * 6,
                      dashLength: 5,
                      dashColor: Colors.red),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Timeline(
                    children: <Widget>[
                      TimeAndDate(
                        dateStart: dateStart,
                        dateEnd: dateEnd,
                      ),
                      ChildAndPincel(
                        onTap: () {
                          showModalBottomSheet<void>(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            enableDrag: false,
                            context: context,
                            builder: (BuildContext context) {
                              return Map2();
                            },
                          );
                        },
                        child: Padding(
                            padding:
                                EdgeInsets.only(top: ScreenUtil().setHeight(5)),
                            child: Container(
                                height: ScreenUtil().setHeight(200),
                                child: MapsG())),
                      ),
                      ChildAndPincel(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                content: Container(
                                  child: Wrap(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Change this Field',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w300,
                                              color: kOrange,
                                              fontSize: ScreenUtil().setSp(20),
                                            ),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(10),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: ScreenUtil().setHeight(20),
                                              left: ScreenUtil().setWidth(15),
                                              right: ScreenUtil().setWidth(15),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                                vertical:
                                                    ScreenUtil().setHeight(15),
                                                horizontal:
                                                    ScreenUtil().setWidth(15)),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: sShadowButton,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'paper ',
                                                    ),
                                                  ],
                                                ),
                                                TextFormField(
                                                  maxLines: null,
                                                  autofocus: true,
                                                  initialValue:
                                                      myProvider.paper,
                                                  onChanged:
                                                      myProvider.setChangePaper,
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xFF313A44),
                                                  ),
                                                  cursorColor: Colors.blue,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText:
                                                          'add your text ... '),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    ScreenUtil().setWidth(50),
                                                vertical:
                                                    ScreenUtil().setHeight(10)),
                                            child: GestureDetector(
                                              child: Container(
                                                alignment: Alignment.center,
                                                height:
                                                    ScreenUtil().setHeight(45),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5),
                                                decoration: BoxDecoration(
                                                  color: kOrangeLight,
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'done',
                                                    style: GoogleFonts.lato(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white,
                                                      fontSize: ScreenUtil()
                                                          .setSp(18),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                myProviderFalse.setPaper(
                                                    myProvider.changePaper);
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: ScreenUtil().setWidth(25)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: ScreenUtil().setWidth(250),
                                  ),
                                  child: Text(
                                    myProvider.paper,
                                    style: kTextStyleBlack,
                                    maxLines: null,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Container()
                              ],
                            ),
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
                                itemCount: myProvider.allInteressen.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InteressenItem(
                                    title:
                                        myProvider.allInteressen[index].title,
                                    img: myProvider.allInteressen[index].img,
                                  );
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
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Kommentare:',
                                  style: kTextStyleBlack,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                        content: Container(
                                          child: Wrap(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Enter name and title',
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.lato(
                                                      fontWeight: FontWeight.w300,
                                                      color: kOrange,
                                                      fontSize: ScreenUtil().setSp(20),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: ScreenUtil().setHeight(10),
                                                  ),
                                                  Form(
                                                  key: formKey,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets.only(
                                                            top: ScreenUtil().setHeight(20),
                                                            left: ScreenUtil().setWidth(15),
                                                            right: ScreenUtil().setWidth(15),
                                                          ),
                                                          padding: EdgeInsets.symmetric(
                                                              vertical:
                                                              ScreenUtil().setHeight(10),
                                                              horizontal:
                                                              ScreenUtil().setWidth(10)),
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              boxShadow: sShadowButton,
                                                              borderRadius:
                                                              BorderRadius.circular(15)),
                                                          child: TextFormField(
                                                            maxLines: null,
                                                            autofocus: true,
                                                            onChanged:myProvider.setName ,
                                                            onSaved:myProvider.setName ,
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: Color(0xFF313A44),
                                                            ),
                                                            cursorColor: Colors.blue,
                                                            decoration: InputDecoration(
                                                                border: InputBorder.none,
                                                                hintText:
                                                                'add name ... '),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets.only(
                                                            top: ScreenUtil().setHeight(20),
                                                            left: ScreenUtil().setWidth(15),
                                                            right: ScreenUtil().setWidth(15),
                                                          ),
                                                          padding: EdgeInsets.symmetric(
                                                              vertical:
                                                              ScreenUtil().setHeight(10),
                                                              horizontal:
                                                              ScreenUtil().setWidth(10)),
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              boxShadow: sShadowButton,
                                                              borderRadius:
                                                              BorderRadius.circular(15)),
                                                          constraints: BoxConstraints(
                                                            minHeight: ScreenUtil().setHeight(100)
                                                          ),
                                                          child: TextFormField(
                                                            maxLines: null,
                                                            autofocus: true,
                                                            onChanged:myProvider.setTitle,
                                                            onSaved: myProvider.setTitle,
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: Color(0xFF313A44),
                                                            ),
                                                            cursorColor: Colors.blue,
                                                            decoration: InputDecoration(
                                                                border: InputBorder.none,
                                                                hintText:
                                                                'add title ... '),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                        ScreenUtil().setWidth(50),
                                                        vertical:
                                                        ScreenUtil().setHeight(10)),
                                                    child: GestureDetector(
                                                      child: Container(
                                                        alignment: Alignment.center,
                                                        height:
                                                        ScreenUtil().setHeight(45),
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 5),
                                                        decoration: BoxDecoration(
                                                          color: kOrangeLight,
                                                          borderRadius:
                                                          BorderRadius.circular(6),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'done',
                                                            style: GoogleFonts.lato(
                                                              fontWeight:
                                                              FontWeight.w700,
                                                              color: Colors.white,
                                                              fontSize: ScreenUtil()
                                                                  .setSp(18),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      onTap: () {
                                                        formKey.currentState.save();
                                                        myProviderFalse.addToAllKomentare();
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: kOrange, width: 2),
                                        boxShadow: sShadowButton,
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.plus,
                                        color: Colors.black,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),

                          ...myProvider.allKomentare
                              .map(
                                (e) => Kommentare(
                                  name: e.name,
                                  title: e.title,
                                  index: myProvider.allKomentare.indexOf(e),
                                ),
                              )
                              .toList(),
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
                                    setState(() {});
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
                                    setState(() {});
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

                                    setState(() {});
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0))),
                                          content: SecondScreen(),
                                        ),
                                      );
                                    },
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
                      Container(
                        width: ScreenUtil().setWidth(32),
                        height: ScreenUtil().setHeight(100),
                        color: Colors.white,
                        alignment: Alignment.topCenter,
                        child: SvgPicture.asset(
                          flagActionsSvg,
                          width: ScreenUtil().setWidth(32),
                          height: ScreenUtil().setHeight(24),
                          color: kOrange,
                        ),
                      )
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
