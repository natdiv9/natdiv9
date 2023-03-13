import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:natdiv9_portfolio/themes/color_theme.dart';
import 'package:natdiv9_portfolio/widgets/bolt_up.dart';
import 'package:natdiv9_portfolio/widgets/skills_level.dart';

class RightBanner extends StatefulWidget {
  const RightBanner({super.key});

  @override
  State<RightBanner> createState() => _RightBannerState();
}

class _RightBannerState extends State<RightBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510,
      width: 475,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: const Color(0XFF0C1616),
            width: 1,
            strokeAlign: StrokeAlign.outside),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xff175553).withOpacity(0.70),
            const Color(0xff43D9AD).withOpacity(0.13),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFFFFFF).withOpacity(0.30),
            spreadRadius: 0,
            blurRadius: 0,
            offset: const Offset(0, 2), // changes position of shadow
          ),
          BoxShadow(
            blurRadius: 64,
            color: Colors.black.withOpacity(0.30),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(left: 12, top: 12, child: BoltupWidget()),
          Positioned(left: 12, bottom: 12, child: BoltupWidget()),
          Positioned(right: 12, top: 12, child: BoltupWidget()),
          Positioned(right: 12, bottom: 12, child: BoltupWidget()),
          Positioned(
              top: -64,
              left: -64,
              child: Image.asset(
                  'assets/illustrations/blue-background-blurs.png')),
          Positioned(
              right: -70,
              bottom: -64,
              child: Image.asset(
                  'assets/illustrations/green-background-blurs.png')),
          // Container(
          //     decoration: BoxDecoration(
          //   color: const Color(0XFF011423).withOpacity(0.19),
          //   borderRadius: BorderRadius.circular(8),
          // )),
          Positioned(
            top: 32,
            bottom: 32,
            left: 32,
            right: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: _backgroudImage()),
                const SizedBox(
                  width: 16,
                ),
                Container(
                    width: 181.38,
                    // height: 142,
                    height: 405.32,
                    decoration: BoxDecoration(
                      color: const Color(0XFF011423).withOpacity(0.19),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildSkillsLeveWidget(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'See more',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: AppColor.primary,
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _buildSkillsLeveWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SkillsLevel(picture: 'assets/images/flutter.png', level: 4),
        SizedBox(
          height: 16,
        ),
        SkillsLevel(picture: 'assets/images/angular.png', level: 4),
        SizedBox(
          height: 16,
        ),
        SkillsLevel(picture: 'assets/images/firebase.png', level: 3),
        SizedBox(
          height: 16,
        ),
        SkillsLevel(picture: 'assets/images/nodejs.png', level: 4),
        SizedBox(
          height: 16,
        ),
        SkillsLevel(picture: 'assets/images/git.png', level: 3),
        SizedBox(
          height: 16,
        ),
        SkillsLevel(picture: 'assets/images/figma.png', level: 4),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Container _backgroudImage() {
    return Container(
      height: 405.32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.background.withOpacity(0.84),
        image: const DecorationImage(
          image: AssetImage('assets/images/chris.png'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(),
          BoxShadow(
            color: const Color(0xFF02121B).withOpacity(0.71),
            spreadRadius: -5,
            blurRadius: 5,
            blurStyle: BlurStyle.inner,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
