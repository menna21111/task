import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/main.dart';

import '../widgets/banner.dart';
import '../widgets/choices.dart';
import '../widgets/custom_vertail_resturant.dart';
import '../widgets/horizantal_resturant_tybes.dart';
import '../widgets/pading.dart';
import '../widgets/resturantitem.dart';
import '../widgets/vertical_list_resturant.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                   SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        height: 30.h,
                        width: 30.w,
                      ),
                      SvgPicture.asset(
                        'assets/images/Arabic_Text.svg',
                        height: 20.h,
                        width: 20.w,
                      ),
                      const SizedBox(),
                      const SizedBox(),
                      const SizedBox(),
                       Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 24.sp,
                      ),
                       Icon(
                        FontAwesomeIcons.whatsapp,
                        size: 26.sp,
                      ),
                       Icon(
                        Icons.notifications,
                        size: 26.sp,
                      ),
                    ],
                  ),
                  const Banners(),const Pading(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(MediaQuery.of(context).size.width * .93, 35.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child:  Text(
                      'Serve Client By Click Register',
                      style: TextStyle(color: Colors.white, fontSize: 16.sp,),
                    ),
                  ),const Pading(),
                  const Choices(),const Pading(),const HorizantalResturantTybes(),const Pading(),
                   Text('All Resturant',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),const Pading(),
                ],
              ),
            ),
           const SliverToBoxAdapter (child: VerticalListResturant()),
          ],
        ),
      ),
    );
  }
}
