import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Resturantitem extends StatelessWidget {
  const Resturantitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black)
      ),
      child: Column(
        children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), child: Image.asset('assets/images/istockphoto-1457433817-612x612.jpg',height: 100.h,width: 150.w,fit: BoxFit.fill,)),
            const Positioned(
              top: 10,right: 10,child: Icon(Icons.favorite_border_outlined,size: 30,color: Colors.red)) ],
        ),
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              child: Text('resturant name',textAlign: TextAlign.start, style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,),maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
          ],
        )
      ]),
    );
  }
}