

import 'package:flutter/material.dart';
import 'package:flutter_app/ui/firstScreen/widgets/child&pincel.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/screenutil.dart';

class TimeAndDate extends StatefulWidget {
  DateTime dateStart ;
   DateTime dateEnd;
TimeAndDate({@required this.dateStart,@required this.dateEnd});
  @override
  _TimeAndDateState createState() => _TimeAndDateState();
}

class _TimeAndDateState extends State<TimeAndDate> {


  List<String> dayGermany = [
    'Mo',
    'Di',
    'Mi',
    'Do',
    'Fr',
    'Sa',
    'So',
  ];

  List<String>monthGermany = [
    'Jan',
    'Feb',
    'Mrz' ,
    'Apr',
    'Mai',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Okt',
    'Nov',
    'Dez',
  ];

  setDateStart(DateTime value) {
    this.widget.dateStart = value;
    setState(() {});
  }

  setDateEnd(DateTime value) {
    this.widget.dateEnd = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  ChildAndPincel(
        onTap: () {

          showModalBottomSheet<void>(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return     Container(
                height: ScreenUtil().setHeight(200),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          child: Icon(Icons.close),
                          onTap: () => Navigator.pop(context),
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(125),
                        ),
                        Container(
                          height: ScreenUtil().setHeight(56),
                          alignment: Alignment.center,
                          child: Text(
                            'Date&Time ',
                            style: kTextStyleBlack,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      color: kBorder,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(

                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xffF5F8FD),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.calendar_today),
                                  Text(
                                    'Change Start',
                                    style: kTextStyleBlack.copyWith(
                                      color: kOrangeLight,
                                    ),
                                  ),
                                  Icon(Icons.access_time),
                                ],
                              ),
                              padding: EdgeInsets.all(10),
                            ),
                            onTap: () {
                              DatePicker.showDateTimePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(2020, 1, 1),
                                  maxTime: DateTime(2030, 6, 7),
                                  onChanged: (date) {
                                    print('change $date');
                                  }, onConfirm: (date) {
                                    setDateStart(date);
                                    print('confirm $date');
                                  },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.de);
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              DatePicker.showDateTimePicker(context,
                                  showTitleActions: true,
                                  minTime: DateTime(2020, 1, 1),
                                  maxTime: DateTime(2030, 6, 7),
                                  onChanged: (date) {
                                    print('change $date');
                                  }, onConfirm: (date) {
                                    setDateEnd(date);
                                    print('confirm $date');
                                  },
                                  currentTime: DateTime.now(),
                                  locale: LocaleType.de);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xffF5F8FD),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.calendar_today),
                                  Text(
                                    'Change End',
                                    style: kTextStyleBlack.copyWith(
                                      color: kOrange,
                                    ),
                                  ),
                                  Icon(Icons.access_time),
                                ],
                              ),
                              padding: EdgeInsets.all(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );

        },
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Start: ${dayGermany[widget.dateStart.weekday-1]}, ${widget.dateStart.month}. ${monthGermany[widget.dateStart.month -1]}. ${widget.dateStart.year} ${widget.dateStart.hour}:${widget.dateStart.minute<10?'0${widget.dateStart.minute}':widget.dateStart.minute}',
                style: kTextStyleBlack,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(5),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.dateEnd ==null? 'Ende: --, --. ---. ---- --:--' :'Ende: ${dayGermany[widget.dateEnd.weekday-1]}, ${widget.dateEnd.month}. ${monthGermany[widget.dateEnd.month -1]}. ${widget.dateEnd.year} ${widget.dateEnd.hour}:${widget.dateEnd.minute<10?'0${widget.dateEnd.minute}':widget.dateEnd.minute}',
                style: kTextStyleBlack,
              ),
            ),
          ],
        ));
  }
}
