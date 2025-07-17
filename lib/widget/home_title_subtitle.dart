import 'package:flutter/material.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/widget/seo_text.dart';
import 'package:seo_renderer/seo_renderer.dart';

class HomeTitleSubtitle extends StatelessWidget {
  const HomeTitleSubtitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SEOtext(
            title,
            style: context.textStyle.titleSmBold.copyWith(
              color: context.colorScheme.onBackground,
            ),
            textRendererStyle: TextRendererStyle.header3,
          ),
          SEOtext(
            subtitle,
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onSurface,
            ),
            textRendererStyle: TextRendererStyle.header4,
          ),
        ],
      ),
    );
  }
}
