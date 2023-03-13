import 'package:flutter/material.dart';
import 'package:natdiv9_portfolio/themes/color_theme.dart';

class LeftBanner extends StatefulWidget {
  const LeftBanner({super.key});

  @override
  State<LeftBanner> createState() => _LeftBannerState();
}

class _LeftBannerState extends State<LeftBanner> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hi all. I am',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'Christian Mwamba',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          '> Mobile developer',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          '> UI/UX Designer',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        // Expanded(child: Container()),
        const SizedBox(
          height: 62,
        ),
        Text(
          '// I am a passionate developer',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '// and love to learn new things \n// currently working on a few projects',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '// you can also see it on my Github page',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        RichText(
          text: TextSpan(
            text: 'const ',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w500, color: AppColor.purple),
            children: const <TextSpan>[
              TextSpan(
                  text: 'githubLink', style: TextStyle(color: AppColor.green)),
              TextSpan(text: ' = ', style: TextStyle(color: AppColor.white)),
              TextSpan(
                  text: '“https://github.com/Natdiv/natdiv9',
                  style: TextStyle(color: AppColor.red)),
            ],
          ),
        )
      ],
    );
  }
}
