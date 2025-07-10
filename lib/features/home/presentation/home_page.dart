import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/hero_widget.dart';
import 'package:portfolio/features/home/presentation/home_course_list.dart';
import 'package:portfolio/style/app_size.dart';
import 'package:portfolio/widget/appBar/my_app_bar.dart';
import 'package:portfolio/widget/background_blur.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundBlur(),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              constraints: BoxConstraints(maxWidth: Insets.maxWidth),
              child: SingleChildScrollView(
                child: Column(children: [HeroWidget(), HomeCourseList()]),
              ),
            ),
          ),

          const MyAppbar(),
        ],
      ),
    );
  }
}
