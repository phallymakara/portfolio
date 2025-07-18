import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constant/app_icon.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/widget/appBar/my_app_bar.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.all(context.insets.padding),
      child: Column(
        children: [
          context.isDesktop ? _DeskTopFooter() : _PhoneFooter(),
          const Divider(height: 24),
          Text('Thank You!'),
        ],
      ),
    );
  }
}

class _DeskTopFooter extends StatelessWidget {
  const _DeskTopFooter();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Applogo(), Spacer(), LargeAppMenu(), Spacer(), _footerLinks()],
    );
  }
}

class _PhoneFooter extends StatelessWidget {
  const _PhoneFooter();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Applogo(),
        const SizedBox(height: 12),
        smallMenu(),
        const SizedBox(height: 12),
        _footerLinks(),
      ],
    );
  }
}

class _footerLinks extends StatelessWidget {
  const _footerLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _FooterLinksItem(onPressed: () {}, icon: AppIcon.github),
        _FooterLinksItem(onPressed: () {}, icon: AppIcon.instagram),
        _FooterLinksItem(onPressed: () {}, icon: AppIcon.linkedin),
        _FooterLinksItem(onPressed: () {}, icon: AppIcon.youtube),
      ],
    );
  }
}

class _FooterLinksItem extends StatelessWidget {
  const _FooterLinksItem({
    super.key,
    required this.onPressed,
    required this.icon,
  });
  final VoidCallback onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          context.colorScheme.onBackground,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
