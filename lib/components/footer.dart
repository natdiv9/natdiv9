import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/color_theme.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49.74,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'find me in: ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          width: 1,
          color: AppColor.lines,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SvgPicture.asset('assets/icons/linkedin-box-fill.svg'),
        ),
        Container(
          width: 1,
          color: AppColor.lines,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SvgPicture.asset('assets/icons/instagram-line.svg'),
        ),
        Container(
          width: 1,
          color: AppColor.lines,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SvgPicture.asset('assets/icons/twitter.svg'),
        ),
        Container(
          width: 1,
          color: AppColor.lines,
        ),
        Expanded(
          child: Container(),
        ),
        Container(
          width: 1,
          color: AppColor.lines,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            children: [
              Text(
                '@Natdiv',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SvgPicture.asset('assets/icons/github-fill.svg'),
            ],
          ),
        ),
      ]),
    );
  }
}
