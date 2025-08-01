import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/routes/app_routes.dart';
import 'package:portfolio/shared/app_locale_controller.dart';
import 'package:portfolio/l10n/app_localizations.dart';
import 'package:portfolio/shared/app_theme_controller.dart';
import 'package:portfolio/style/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleControllerProvider);
    final theme = ref.watch(appThemeControllerProvider);
    return MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppTheme(fontFamily: _fontfamily(locale.value)).dark,
      theme: AppTheme(fontFamily: _fontfamily(locale.value)).light,
      themeMode: theme.value,
      supportedLocales: const [Locale('en'), Locale('km')],
      locale: Locale(locale.value ?? 'en'),
      routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
    );
  }

  String _fontfamily(String? locale) {
    return (locale ?? 'en') == 'en' ? 'Poppins' : 'YongYeang';
  }
}
