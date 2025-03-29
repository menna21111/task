import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Banners extends StatelessWidget {
  const Banners({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/images/banner.avif', height: 100, width: MediaQuery.of(context).size.width*.9,fit: BoxFit.fill,)),
           Positioned(
        
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.favorite,size: 30,color: Colors.red,),
               
                 Text('Meal',style: TextStyle(color: Colors.black,fontSize: 20.sp,)),            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(MediaQuery.of(context).size.width * .02, 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child:  Text(
                ' Register',
                style: TextStyle(color: Colors.white, fontSize: 16.sp,),
              ),
            ),

              ],
            ),
          )
      ],
    );
  }
}