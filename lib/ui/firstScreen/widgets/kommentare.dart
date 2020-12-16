
import 'package:flutter/material.dart';
import 'package:flutter_app/myProvider.dart';
import 'package:flutter_app/ui/firstScreen/widgets/thumpWidget.dart';
import 'package:flutter_app/value/colors.dart';
import 'package:flutter_app/value/style.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:provider/provider.dart';

class Kommentare extends StatelessWidget {

  bool like ;
  String title ;
  String name ;
  int index ;
  Kommentare({this.name,this.title,this.index});
  @override
  Widget build(BuildContext context) {
    return  Dismissible(
      background: Container(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(18)),
        margin:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)) ,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15)),
        alignment: AlignmentDirectional.centerEnd,

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
          child: Icon(Icons.delete,
            color: Colors.white,
          ),
        ),
      ),
      onDismissed: (direction) {
        Provider.of<MyProvider>(context,listen: false).removeFromAllKomentare(index) ;
      },
      key: UniqueKey(),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(18)),
        margin:EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(15)),
              decoration: BoxDecoration(
                border: Border.all(color: kOrangeLight),
                borderRadius:index.isOdd? BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ):BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Text(
                        '$name:',
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

                          maxWidth:
                          ScreenUtil().setWidth(211),
                        ),
                        child: Text(
                          title,
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
                  ThumpWidget(like),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
