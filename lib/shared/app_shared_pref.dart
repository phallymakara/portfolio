import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPref {
  static const localeKey = 'app_locale';
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
}
