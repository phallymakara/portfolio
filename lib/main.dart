import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:portfolio/home_page.dart';
import 'package:portfolio/l10n/app_localizations.dart';

void main() {
  runApp(
    MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('kh')],
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
