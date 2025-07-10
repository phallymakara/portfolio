import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/features/home/presentation/hero_button.dart';
import 'package:portfolio/features/home/presentation/hero_image.dart';
import 'package:portfolio/features/home/presentation/hero_texts.dart';
import 'package:portfolio/style/app_size.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.isDesktop || context.isTablet ? _largeHero() : _smallHero(),
      ],
    );
  }
}

class _smallHero extends StatelessWidget {
  const _smallHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 140),
          child: HeroImage(),
        ),
        Gap(Insets.xl),
        const HeroTexts(),
        Gap(Insets.xxl),
        smallHeroButton(),
      ],
    );
  }
}

class _largeHero extends StatelessWidget {
  const _largeHero();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const HeroImage()),
        Gap(Insets.xxl),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const HeroTexts(),
              Gap(Insets.xl),
              const LargeHeroButton(),
            ],
          ),
        ),
      ],
    );
  }
}
