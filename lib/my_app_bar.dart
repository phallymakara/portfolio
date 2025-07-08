import 'package:flutter/material.dart';
import 'package:portfolio/app_text_styles.dart';
import 'package:portfolio/extension.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Applogo(),
        Spacer(),
        AppMenu(),
        Spacer(),
        LanguageToggle(),
        ThemeToggle(),
      ],
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

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text('Home'), Text('Skills'), Text('Blog'), Text('About Me')],
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
