import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/shared/app_locale_controller.dart';
import 'package:portfolio/constant/app_icon.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/widget/seo_text.dart';

class LanguageSwitch extends ConsumerWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final locale = ref.watch(appLocaleControllerProvider);
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 0,
            child: PopUpLanguageSwitchItem(
              language: 'English',
              icon: AppIcon.us,
            ),
          ),
          PopupMenuItem(
            value: 1,
            child: PopUpLanguageSwitchItem(language: 'ខ្មែរ', icon: AppIcon.km),
          ),
        ];
      },
      initialValue: locale.value == 'en' ? 0 : 1,
      onSelected: (value) {
        if (value == 0) {
          ref.read(appLocaleControllerProvider.notifier).changeLocale('en');
        } else {
          ref.read(appLocaleControllerProvider.notifier).changeLocale('km');
        }
      },
      child: Row(
        children: [
          Icon(Icons.language, color: context.colorScheme.onBackground),
          const Gap(4),
          SEOtext(locale.value == 'en' ? 'En' : 'ខ្មែរ'),
        ],
      ),
    );
  }
}

class PopUpLanguageSwitchItem extends StatelessWidget {
  const PopUpLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  });

  final String language;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 18, height: 18),
        const Gap(8),
        SEOtext(language),
      ],
    );
  }
}
