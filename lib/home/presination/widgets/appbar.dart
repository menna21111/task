import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Appbarr extends StatelessWidget {
  const Appbarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildIcon(Icons.menu),
        _buildImage('assets/images/logo.png'),
        _buildSvgImage('assets/images/Arabic_Text.svg'),
        const Spacer(),
        _buildIcon(Icons.search_outlined),
        const Icon(FontAwesomeIcons.whatsapp, size: 30),
        _buildIcon(Icons.notifications),
      ],
    );
  }

  Widget _buildIcon(IconData icon) {
    return Icon(icon, size: 30);
  }

  Widget _buildImage(String path) {
    return Image.asset(path, height: 30, width: 30);
  }

  Widget _buildSvgImage(String path) {
    return SvgPicture.asset(path, height: 20, width: 20);
  }
}
