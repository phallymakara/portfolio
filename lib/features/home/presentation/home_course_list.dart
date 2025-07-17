import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/features/courses/presentation/courses_item.dart';
import 'package:portfolio/widget/home_title_subtitle.dart';

class HomeCourseList extends StatelessWidget {
  const HomeCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.courses,
          subtitle: context.texts.courseDescription,
        ),
        const Gap(16),
        context.isDesktop ? _HomeCourseListDesktop() : _HomeCourseListPhone(),
      ],
    );
  }
}

class _HomeCourseListDesktop extends StatelessWidget {
  const _HomeCourseListDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Row(
        children: [
          Expanded(child: CoursesItem()),
          Expanded(child: CoursesItem()),
          Expanded(child: CoursesItem()),
        ],
      ),
    );
  }
}

class _HomeCourseListPhone extends StatelessWidget {
  const _HomeCourseListPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 240, child: CoursesItem()),
            const Gap(12),
            SizedBox(width: 240, child: CoursesItem()),
            const Gap(12),
            SizedBox(width: 240, child: CoursesItem()),
          ],
        ),
      ),
    );
  }
}
