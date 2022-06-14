import 'package:auth_pages/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIconButton extends StatelessWidget {
  final String svg;
  final double size;
  const MyIconButton({
    Key? key,

    required this.svg,
    this.size = 64,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kBlackColor,
      ),
      child: SvgPicture.asset(svg),
    );
  }
}
