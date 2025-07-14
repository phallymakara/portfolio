import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/widget/styled_card.dart';

class TestimonyItem extends StatelessWidget {
  const TestimonyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(
                  backgroundImage: Image.network('src').image,
                ),
              ),
              const Gap(16),
              Expanded(
                child: Text(
                  'Testi mony name',
                  style: context.textStyle.bodyLgBold.copyWith(
                    color: context.colorScheme.onBackground,
                  ),
                ),
              ),
            ],
          ),
          const Gap(16),
          Text(
            'test of testi moni',
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
