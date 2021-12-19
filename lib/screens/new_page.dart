import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel/model/place.dart';

class Newpage extends StatelessWidget {
  final Place place;
  Newpage(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 260.h,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      place.imageUrl,
                      fit: BoxFit.cover,
                      height: 260.h,
                      width: double.infinity,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.name,
                    style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Transportation available',
                    style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 600,
                    child: ListView.builder(
                        itemCount: place.transport.length,
                        itemBuilder: (context, index) {
                          final transport = place.transport[index];
                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.r),
                                side: BorderSide(color: Colors.black)),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Container(
                                height: 100.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${transport.vname}',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'TIcket price : \$${transport.price}',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Book Now'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

