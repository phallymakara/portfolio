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
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://dummyimage.com/350x250/33cc99/fff',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Gap(16),
              SEOtext(
                'Course Title Here',
                style: context.textStyle.bodyLgBold.copyWith(
                  color: context.colorScheme.onBackground,
                ),
                textRendererStyle: TextRendererStyle.header3,
              ),
              const Gap(8),
              Expanded(
                child: SEOtext(
                  'This is a short description of the course content. It should be concise and clear to attract users.',
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
      ),
    );
  }
}
