import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/app_locale_controller.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/l10n/app_localizations.dart';
import 'package:portfolio/style/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleControllerProvider);
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppTheme(fontFamily: _fontfamily(locale.value)).dark,
      theme: AppTheme(fontFamily: _fontfamily(locale.value)).light,
      themeMode: ThemeMode.dark,
      supportedLocales: const [Locale('en'), Locale('km')],
      locale: Locale(locale.value ?? 'en'),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

  String _fontfamily(String? locale) {
    return (locale ?? 'en') == 'en' ? 'Poppins' : 'YongYeang';
  }
}
