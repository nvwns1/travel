import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travel/data/data.dart';

import 'new_page.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search your place...',
                     style: TextStyle(
                       fontSize: 30.sp, fontWeight: FontWeight.w700),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(30.r)),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {},
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 100.h,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: booking.length,
                  itemBuilder: (context, index){
                    final book = booking[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      side: BorderSide(color: Colors.black12)
                    ),

                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        children: [
                          Expanded(child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.r),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(book.place.imageUrl)
                                )
                              ),
                            ),
                          )),
                          Expanded(child: 
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(book.place.name),
                                    Text(book.transport.vname),
                                    Text(book.date)
                                ],
                              ),
                            ),
                          )
                          )
                        ],
                      ),
                    ),
                  
                  );
                }),
              ),
              SizedBox(height: 20.h,),

              Container(
                height: 605.h,
                width: double.infinity,
                child: GridView.builder(
                  itemCount: places.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10
                ),
                 itemBuilder: (context,index){
                   final place = places[index];
                   return InkWell(
                     onTap: (){
                       Get.to(() => Newpage(place));
                     },
                     child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(place.imageUrl)
                        ),
                        borderRadius: BorderRadius.circular(20.r)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0, left: 8.0),
                        child: Text(place.name,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                   
                        ),
                        ),
                      ),
                     ),
                   );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}