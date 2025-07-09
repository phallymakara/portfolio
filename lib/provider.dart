import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/app_locale_controller.dart';

final appLocalProvider = AsyncNotifierProvider<AppLocaleController, String>(
  AppLocaleController.new,
);
