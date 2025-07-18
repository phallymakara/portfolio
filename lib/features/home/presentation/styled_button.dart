import 'package:flutter/material.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/style/app_colors.dart';
import 'package:portfolio/widget/seo_text.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  const PrimaryButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.gray[100],
        ), // TextStyle
      ), // Text // ElevatedButton
    );
  }
}

class OutlineButton extends StatelessWidget {
  final String title;
  const OutlineButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: SEOtext(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: context.colorScheme.onBackground,
        ), // TextStyle
      ), // SeoText // OutlinedButton
    );
  }
}
