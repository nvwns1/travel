import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel/screens/home_screens.dart';
import 'package:travel/screens/landing_screen.dart';
import 'package:get/get.dart';
void main(){
  runApp(MainHome());
}


class MainHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize : Size(500, 900),
      builder:() => GetMaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Landing(),
        ),
      ),
    );
  }
}