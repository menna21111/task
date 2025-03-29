import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home/presination/screans/home_screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(350, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return  MaterialApp(
                      builder: (context, child) {
            return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.linear(1.0)),
                child: child!);
          },

            debugShowCheckedModeBanner: false,
            home: HomeScrean(),
          );
        });
  }
}
