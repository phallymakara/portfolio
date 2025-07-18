import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/features/home/presentation/experience_body.dart';
import 'package:portfolio/features/home/presentation/hero_widget.dart';
import 'package:portfolio/features/home/presentation/home_course_list.dart';
import 'package:portfolio/features/home/presentation/testimoni_list.dart';
import 'package:portfolio/widget/appBar/app_scaffold.dart';
import 'package:portfolio/widget/home_title_subtitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
            child: HeroWidget(),
          ),
        ),
        SliverGap(context.insets.gap),
        SliverToBoxAdapter(child: HomeCourseList()),
        SliverGap(context.insets.gap),
        SliverToBoxAdapter(child: ExperienceBody()),
        SliverGap(context.insets.gap),
        SliverToBoxAdapter(
          child: HomeTitleSubtitle(
            title: context.texts.testimonies,
            subtitle: context.texts.testimoniesDescription,
          ),
        ),
        const SliverGap(32),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
          sliver: TestimoniList(),
        ),
      ],
    );
  }
}
