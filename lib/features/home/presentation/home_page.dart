import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
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
              padding: EdgeInsets.only(top: 90),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.insets.padding,
                      ),
                      child: HeroWidget(),
                    ),
                  ),
                  SliverGap(context.insets.gap),
                  SliverToBoxAdapter(child: HomeCourseList()),
                  SliverGap(context.insets.gap),
                  SliverToBoxAdapter(child: ExperienceBody()),
                  SliverGap(context.insets.gap),
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
