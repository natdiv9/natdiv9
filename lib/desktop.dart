import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:natdiv9_portfolio/components/footer.dart';
import 'package:natdiv9_portfolio/components/header.dart';
import 'package:natdiv9_portfolio/components/left_banner.dart';
import 'package:natdiv9_portfolio/components/right_banner.dart';
import 'package:natdiv9_portfolio/themes/color_theme.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: AppColor.background,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: AppColor.lines)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Header(),
                Container(
                  height: 1,
                  color: AppColor.lines,
                ),
                const SizedBox(
                  height: 32,
                ),
                Expanded(
                    child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [LeftBanner(), RightBanner()],
                  ),
                )),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 1,
                  color: AppColor.lines,
                ),
                const Footer()
              ]),
        ),
      ),
    );
  }
}
