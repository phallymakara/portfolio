import 'package:flutter/material.dart';
import 'package:portfolio/extension.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('flutter'),
        context.isDesktop || context.isTablet ? _largeHero() : _smallHero(),
      ],
    );
  }
}

class _smallHero extends StatelessWidget {
  const _smallHero({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _largeHero extends StatelessWidget {
  const _largeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
