import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'resturantitem.dart';

class HorizantalResturantTybes extends StatelessWidget {
  const HorizantalResturantTybes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return const Resturantitem();
      }),
    );
  }
}
