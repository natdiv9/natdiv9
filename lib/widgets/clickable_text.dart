import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:natdiv9_portfolio/themes/color_theme.dart';

class ClickableTextWidget extends StatefulWidget {
  final String text;

  final bool selected;

  const ClickableTextWidget(
      {super.key, required this.text, required this.selected});

  @override
  State<ClickableTextWidget> createState() => _ClickableTextWidgetState();
}

class _ClickableTextWidgetState extends State<ClickableTextWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEnterEvent event) => _onHoverChanged(enabled: true),
      onExit: (PointerExitEvent event) => _onHoverChanged(enabled: false),
      child: SizedBox(
        height: 56.19,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                widget.text,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: _isHovered
                        ? const Color.fromARGB(255, 135, 183, 231)
                        : AppColor.primary),
              ),
            ),
            (widget.selected)
                ? Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 3,
                      color: AppColor.primaryButtons,
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  void _onHoverChanged({required bool enabled}) {
    setState(() {
      _isHovered = enabled;
    });
  }
}
