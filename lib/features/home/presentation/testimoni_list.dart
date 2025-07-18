import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/features/testimony/presentation/testimony_item.dart';

class TestimoniList extends StatelessWidget {
  const TestimoniList({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isDesktop ? _DesktopTestimony() : _PhoneTestimony();
  }
}

class _DesktopTestimony extends StatelessWidget {
  const _DesktopTestimony();

  @override
  Widget build(BuildContext context) {
    return SliverMasonryGrid.count(
      crossAxisCount:
          context.isDesktop ? 3 : 2, // Set your desired number of columns
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childCount: 9, // Set your item count
      itemBuilder: (context, index) {
        return TestimonyItem();
      },
    );
  }
}

class _PhoneTestimony extends StatelessWidget {
  const _PhoneTestimony({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 9,
      itemBuilder: (context, index) {
        return TestimonyItem();
      },
      separatorBuilder: (context, index) => const Gap(10),
    );
  }
}
