import 'package:flutter/cupertino.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/features/courses/presentation/courses_item.dart';
import 'package:portfolio/widget/appBar/app_scaffold.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(context.insets.padding),
          sliver: SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  context.mq.size.width ~/ 300 >= 3
                      ? 3
                      : context.mq.size.width ~/ 300,
              crossAxisSpacing: 24,
              mainAxisSpacing: 24,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, indext) {
              return CoursesItem();
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
