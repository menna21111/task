import 'package:flutter/material.dart';

import 'custom_vertail_resturant.dart';

class VerticalListResturant extends StatelessWidget {
  const VerticalListResturant({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomVertailResturant();
      },
    );
  }
}