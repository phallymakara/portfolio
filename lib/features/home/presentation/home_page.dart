import 'package:flutter/material.dart';
import 'package:portfolio/widget/appBar/my_app_bar.dart';
import 'package:portfolio/widget/background_blur.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [const BackgroundBlur(), const MyAppbar()]),
    );
  }
}
