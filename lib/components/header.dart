import 'package:flutter/material.dart';
import 'package:natdiv9_portfolio/widgets/clickable_text.dart';

import '../themes/color_theme.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.19,
      child: Row(children: [
        SizedBox(
          width: 311,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'christian-mwamba',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
        Container(
          width: 1,
          color: AppColor.lines,
        ),
        const ClickableTextWidget(
          text: '_hello',
          selected: true,
        ),
        Container(
          width: 1,
          color: AppColor.lines,
        ),
        const ClickableTextWidget(
          text: '_about-me',
          selected: false,
        ),
        Container(
          width: 1,
          color: AppColor.lines,
        ),
        const ClickableTextWidget(
          text: '_projects',
          selected: false,
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
        const ClickableTextWidget(
          text: '_contact-me',
          selected: false,
        ),
      ]),
    );
  }
}
