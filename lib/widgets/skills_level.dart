import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SkillsLevel extends StatelessWidget {
  const SkillsLevel({super.key, required this.picture, required this.level});

  final String picture;
  final int level;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          picture,
          scale: 1,
          width: 30,
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [..._buildLevelSkillsWidget(level)],
        )
      ],
    );
  }

  List<Widget> _buildLevelSkillsWidget(int level) {
    var widgets = <Widget>[];
    for (var i = 0; i < 5; i++) {
      if (i < level) {
        widgets.add(Container(
            height: 20.69,
            width: 20.69,
            child: SvgPicture.asset('assets/icons/level-high.svg')));
      } else {
        widgets.add(Container(
            height: 20.69,
            width: 20.69,
            child: SvgPicture.asset('assets/icons/level-low.svg')));
      }
    }
    return widgets;
  }
}
