import 'package:flutter/cupertino.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/routes/app_routes.dart';

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context) {
    return [
      AppMenu(title: context.texts.home, path: Routes.home),
      AppMenu(title: context.texts.skills, path: Routes.skills),
      AppMenu(title: context.texts.blog, path: Routes.blog),
      AppMenu(title: context.texts.aboutme, path: Routes.about),
    ];
  }
}

class AppMenu {
  final String title;
  final String path;
  AppMenu({required this.title, required this.path});
}
