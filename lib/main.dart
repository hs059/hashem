import 'package:flutter/material.dart';
import 'package:flutter_app/ui/firstScreen/firstScreen.dart';
import 'package:flutter_app/ui/secondScreen/SecondScreen.dart';

import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'myProvider.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyProvider>(
          create: (context) => MyProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: Builder(
          builder: (context) {
            ScreenUtil.init(context,
                designSize: Size(360, 640), allowFontScaling: true);
            return FirstScreen();
          },
         ),
      ),
    );
  }
}

