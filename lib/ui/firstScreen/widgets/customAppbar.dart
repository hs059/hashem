

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/value/colors.dart';

Widget customAppBar(BuildContext context){
return PreferredSize(
  child: Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: kBorder,
        offset: Offset(0, 2.0),
        blurRadius: 4.0,
      )
    ]),
    child: AppBar(
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
    ),

  ),
  preferredSize: Size.fromHeight(kToolbarHeight),
);
}