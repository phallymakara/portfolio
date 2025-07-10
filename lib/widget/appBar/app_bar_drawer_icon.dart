import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/widget/appBar/drawer_menu.dart';

class AppBarDrawerIcon extends ConsumerWidget {
  const AppBarDrawerIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOpen = ref.watch(drawerMenuControllerProvider);

    return IconButton(
      onPressed: () {
        if (isOpen) {
          ref.read(drawerMenuControllerProvider.notifier).close();
        } else {
          ref.read(drawerMenuControllerProvider.notifier).open();
        }
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        progress: AlwaysStoppedAnimation(isOpen ? 1.0 : 0.0),
      ),
    );
  }
}
