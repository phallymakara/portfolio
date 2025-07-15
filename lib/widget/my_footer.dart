import 'package:flutter/material.dart';
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
    return Row(children: [Applogo(), Spacer(), LargeAppMenu(), Spacer()]);
  }
}

class _PhoneFooter extends StatelessWidget {
  const _PhoneFooter();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Applogo(),
        const SizedBox(height: 12),
        smallMenu(),
        const SizedBox(height: 12),
      ],
    );
  }
}
