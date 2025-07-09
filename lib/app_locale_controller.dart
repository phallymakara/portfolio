import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/shared/app_shared_pref.dart';

class AppLocaleController extends AsyncNotifier<String> {
  @override
  FutureOr<String> build() {
    return AppSharedPref.getApplocale();
  }

  void changeLocale(String newLocale) async {
    await AppSharedPref.setAppLocale(newLocale);
    update((state) => newLocale);
  }
}
