import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/widget/appBar/app_scaffold.dart';
import 'package:portfolio/widget/seo_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: Image.asset('assets/images/me.jpg').image,
                ),
                const Gap(16),
                SEOtext(
                  context.texts.aboutTitle,
                  style: context.textStyle.titleSmBold,
                ),
                const Gap(16),
                SEOtext(context.texts.aboutDescription),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
