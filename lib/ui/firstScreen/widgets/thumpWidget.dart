
import 'package:flutter/material.dart';
import 'package:flutter_app/value/string.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ThumpWidget extends StatefulWidget {
  bool like ;
  ThumpWidget(this.like) ;
  @override
  _ThumpWidgetState createState() => _ThumpWidgetState();
}

class _ThumpWidgetState extends State<ThumpWidget> {

  setLike(bool value){
    widget.like= value;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if(widget.like!=null){
          return Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => setLike(true),
                child: widget.like?Icon(Icons.thumb_up,size: 20,):SvgPicture.asset(
                  thumbUpSvg,
                  height: ScreenUtil().setHeight(18),
                ),
              ),
              GestureDetector(
                onTap: () => setLike(false),
                child: widget.like?SvgPicture.asset(
                  thumbDownSvg,
                  height: ScreenUtil().setHeight(18),
                ):Icon(Icons.thumb_down,size: 20,),
              ),
            ],
          );
        }else{
          return Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => setLike(true),
                child: SvgPicture.asset(
                  thumbUpSvg,
                  height: ScreenUtil().setHeight(18),
                ),
              ),
              GestureDetector(
                onTap: () => setLike(false),
                child: SvgPicture.asset(
                  thumbDownSvg,
                  height: ScreenUtil().setHeight(18),
                ),
              ),
            ],
          );
        }
      },

    );
  }
}
