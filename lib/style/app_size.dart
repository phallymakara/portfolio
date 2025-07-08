class Insets {
  static const double maxWidth = 1150;
}

abstract class AppInsets {
  double get padding;
  double get appBarHeight;
}

class largeInsets extends AppInsets {
  @override
  double get padding => 80;

  @override
  double get appBarHeight => 64;
}

class smallInsets extends AppInsets {
  @override
  double get padding => 16;

  @override
  double get appBarHeight => 56;
}
