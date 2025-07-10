import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/widget/seo_text.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class CoursesItem extends StatelessWidget {
  const CoursesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 0.5,
              child: ClipRRect(
                child: Image.network(
                  'https://dummyimage.com/350x250/33cc99/fff',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(24),
            SEOtext(
              'Random text',
              style: context.textStyle.bodyLgBold.copyWith(
                color: context.colorScheme.onBackground,
              ),
              textRendererStyle: TextRendererStyle.header4,
            ),
            const Gap(8),
            Expanded(
              child: SEOtext(
                'Some Description Text for Testing',
                style: context.textStyle.bodyMdMedium.copyWith(
                  color: context.colorScheme.onSurface,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
