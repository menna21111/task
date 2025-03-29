import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Choices extends StatelessWidget {
  const Choices({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24.sp,

      ),
      Icon(Icons.shopping_cart,size: 30.sp,)
      ,const Customchoice(text: 'My Request',)
      ,const Customchoice(text: 'Expaired Request',),
    ],);
  }
}
class Customchoice extends StatelessWidget {
  const Customchoice({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
         color: Colors.grey[300],
         borderRadius: BorderRadius.circular(15),
         border: Border.all(color: Colors.black)
      ),
      child: Text(text,style:  TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.bold),),
    );
  }
}