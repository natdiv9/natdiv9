import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoltupWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 13,
      height: 13,
      decoration: const BoxDecoration(
        gradient: RadialGradient(colors: [
          Color(0xff196C6A),
          Color(0xff114B4A),
        ]),
        boxShadow: [
          BoxShadow(
              color: Color(0xff0D4341), offset: Offset(2, 2), blurRadius: 4),
          BoxShadow(
              color: Color(0xff1A8277),
              offset: Offset(0, 1),
              blurRadius: 2,
              blurStyle: BlurStyle.inner)
        ],
        borderRadius: BorderRadius.all(Radius.elliptical(13, 13)),
      ),
      child: Center(
          child: SvgPicture.asset(
        'assets/icons/cross.svg',
        width: 5.54,
        height: 4.59,
      )),
    );
  }
}
