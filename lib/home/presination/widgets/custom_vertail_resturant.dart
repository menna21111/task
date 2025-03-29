import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomVertailResturant extends StatelessWidget {
  const CustomVertailResturant({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(

      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.black)
      ),
      child:  Column(
        children: [
           Align(
            alignment: Alignment.centerRight,
            child: Text('premium',style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.bold),)),
    Stack(
          children: [
            Image.asset('assets/images/istockphoto-1457433817-612x612.jpg',height: 100.h,width: MediaQuery.of(context).size.width*.9,fit: BoxFit.fill,),
             Positioned(
              top: 10,right: 10,child: Icon(Icons.favorite_border_outlined,size: 28.sp,color: Colors.red)) ],
        ),
 Row(
    
  children: [
    Text('resturant name', style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.bold),),
    SizedBox(width: 20,),
    Text('resturant tybe', style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
    ]),
Row(
    mainAxisAlignment: MainAxisAlignment.end,
  children: [
     Text('Good', style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.bold),),
    const SizedBox(width: 10,),
    RatingBar.builder(
      itemSize: 15.sp,
   initialRating: 3,
   minRating: 1,
   ignoreGestures: true,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   
   itemBuilder: (context, _) => const Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
   
   },
),
    ]), Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(' Available', style: TextStyle(color: Colors.red,fontSize: 14.sp,fontWeight: FontWeight.bold),),
    SizedBox(width: 20,),
    Row(
      children: [Icon(Icons.location_on,size: 20.sp,color: Colors.red,),
        Text(' Giza,Egypt', style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.w400),),
      ],
    ),
    ]),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
                ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(MediaQuery.of(context).size.width * .05, 30.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                'request',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),

 Icon(Icons.call,size: 28.sp,color: Colors.red,),
 Icon(Icons.message,size: 28.sp,color: Colors.red,),
        Icon(
                    Icons.report_gmailerrorred_outlined,
                    color: Colors.red,
                    size: 34.sp,
                  ),
    ]),
        ],
      ),
    );
  }
}