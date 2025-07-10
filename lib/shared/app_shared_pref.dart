import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPref {
  static const localeKey = 'app_locale';
  static const themeKey = 'app_theme';
  static Future<void> setAppLocale(String locale) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString(
      localeKey,
      locale,
    ); // Store the actual locale value
  }

  static Future<String> getApplocale() async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(localeKey) ?? 'en';
  }

  static Future<void> setAppTheme(String theme) async {
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString(
      themeKey,
      theme,
    ); // Store the actual locale value
  }

  static Future<ThemeMode> getAppTheme() async {
    final sharedPref = await SharedPreferences.getInstance();
    return sharedPref.getString(themeKey) == 'light'
        ? ThemeMode.light
        : ThemeMode.dark;
  }
}
