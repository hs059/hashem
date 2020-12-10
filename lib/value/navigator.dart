import 'package:flutter/material.dart';

kNavigatorPush(BuildContext context,Widget route ){
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ));
}