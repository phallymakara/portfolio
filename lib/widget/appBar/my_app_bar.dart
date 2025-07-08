import 'package:flutter/material.dart';
import 'package:portfolio/app_text_styles.dart';
import 'package:portfolio/constant/app_menu_list.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/style/app_size.dart';
import 'package:portfolio/widget/appBar/app_bar_drawer_icon.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: context.theme.appBarTheme.backgroundColor,
      alignment: Alignment.center,
      height: context.insets.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),

      duration: const Duration(milliseconds: 200),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [
            Applogo(),
            Spacer(),
            if (context.isDesktop) LargeAppMenu(),
            Spacer(),
            LanguageToggle(),
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawerIcon(),
          ],
        ),
      ),
    );
  }
}

class Applogo extends StatelessWidget {
  const Applogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('PORTFOLIO', style: context.textStyle.titleLgBold);
  }
}

class LargeAppMenu extends StatelessWidget {
  const LargeAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          AppMenuList.getItems(context)
              .map(
                (AppMenu e) => LargeAppBarMenuItem(
                  text: e.title,
                  isSelected: true,
                  onTap: () {}, // you can update this to navigate
                ),
              )
              .toList(),
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  const LargeAppBarMenuItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(text, style: SmallTextStyles().bodyLgMedium),
      ),
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text('English')),
          PopupMenuItem(child: Text('Khmer')),
        ];
      },
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value) {});
  }
}
