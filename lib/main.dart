import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/l10n/app_localizations.dart';
import 'package:portfolio/style/app_theme.dart';

void main() {
  runApp(
    MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      supportedLocales: [Locale('en'), Locale('kh')],
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
