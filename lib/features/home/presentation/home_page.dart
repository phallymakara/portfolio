import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/experience_body.dart';
import 'package:portfolio/features/home/presentation/hero_widget.dart';
import 'package:portfolio/features/home/presentation/home_course_list.dart';
import 'package:portfolio/features/home/presentation/testimoni_list.dart';
import 'package:portfolio/style/app_size.dart';
import 'package:portfolio/widget/appBar/my_app_bar.dart';
import 'package:portfolio/widget/background_blur.dart';
import 'package:portfolio/widget/my_footer.dart';

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
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: HeroWidget()),
                  SliverToBoxAdapter(child: HomeCourseList()),
                  SliverToBoxAdapter(child: ExperienceBody()),
                  TestimoniList(),
                  SliverToBoxAdapter(child: MyFooter()),
                ],
              ),
            ),
          ),

          const MyAppbar(),
        ],
      ),
    );
  }
}
