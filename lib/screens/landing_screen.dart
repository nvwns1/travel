import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel/screens/home_screens.dart';
import 'package:get/get.dart';
class Landing extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Center(
          child: Container(

            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('images/aero.jpg'))),
          ),
        ),
        Positioned(
          bottom: 200,
          left: 10,
          right: 10,
          child: Column(
            children: [
              Text('Travel with comfort and safety!',
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(onPressed: (){
                  Get.to(()=> HomeScreen());
                },
                 child: Text('Get Started',
                 style: TextStyle(
                   fontSize: 18.sp
                 ),
                 ),
                 style: ElevatedButton.styleFrom(
                   minimumSize: Size(120.h, 50.w),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12.r)
                   )
                 ),
                 ),
              )
            ],
          ),
        
        )
      ],
    );
  }
}
