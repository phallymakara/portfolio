import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/app_text_styles.dart';
import 'package:portfolio/constant/app_menu_list.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/shared/app_theme_controller.dart';
import 'package:portfolio/style/app_size.dart';
import 'package:portfolio/widget/appBar/app_bar_drawer_icon.dart';
import 'package:portfolio/widget/appBar/drawer_menu.dart';
import 'package:portfolio/widget/language_switch.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
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
                LanguageSwitch(),
                ThemeToggle(),
                if (!context.isDesktop) AppBarDrawerIcon(),
              ],
            ),
          ),
        ),
        if (!context.isDesktop) DrawerMenu(),
      ],
    );
  }
}

class Applogo extends StatelessWidget {
  const Applogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(context.texts.applogo, style: context.textStyle.titleLgBold);
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
                  isSelected: GoRouterState.of(context).fullPath == e.path,
                  onTap: () {
                    GoRouter.of(context).go(e.path);
                  }, // you can update this to navigate
                ),
              )
              .toList(),
    );
  }
}

class smallMenu extends StatelessWidget {
  const smallMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          AppMenuList.getItems(context)
              .map(
                (AppMenu e) => LargeAppBarMenuItem(
                  text: e.title,
                  isSelected: GoRouterState.of(context).fullPath == e.path,
                  onTap: () {
                    GoRouter.of(context).go(e.path);
                  }, // you can update this to navigate
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
        child: Text(
          text,
          style: SmallTextStyles().bodyLgMedium.copyWith(
            color:
                isSelected
                    ? context.colorScheme.onBackground
                    : context.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}

class ThemeToggle extends ConsumerWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appThemeControllerProvider);

    return Switch(
      value: state.value == ThemeMode.dark,
      onChanged: (value) {
        ref
            .read(appThemeControllerProvider.notifier)
            .changeTheme(value ? ThemeMode.dark : ThemeMode.light);
      },
    );
  }
}
