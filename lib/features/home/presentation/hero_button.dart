import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/features/home/presentation/styled_button.dart';
import 'package:portfolio/style/app_size.dart';

class LargeHeroButton extends StatelessWidget {
  const LargeHeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryButton(title: context.texts.skills),
        Gap(Insets.lg),
        OutlineButton(title: context.texts.contact),
      ],
    );
  }
}

class smallHeroButton extends StatelessWidget {
  const smallHeroButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PrimaryButton(title: context.texts.skills),
        Gap(Insets.lg),
        OutlineButton(title: context.texts.contact),
      ],
    );
  }
}
