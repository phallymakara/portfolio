import 'package:flutter/cupertino.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/features/courses/presentation/courses_item.dart';

class HomeCourseList extends StatelessWidget {
  const HomeCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [_HomeCourseListDesktop()]);
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
