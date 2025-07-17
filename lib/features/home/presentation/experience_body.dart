import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/extension.dart';
import 'package:portfolio/widget/home_title_subtitle.dart';
import 'package:portfolio/widget/styled_card.dart';

const explen = 6;
const expPointSize = 16.0;
const expScaleFactor = 150.0;
const expPointFactor = expHeight / 2;

class ExperienceBody extends StatelessWidget {
  const ExperienceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.experieces,
          subtitle: context.texts.experiecesDescription,
        ),
        const Gap(32),
        context.isDesktop ? DesktopExperiencesBody() : PhoneExperienceBody(),
      ],
    );
  }
}

class PhoneExperienceBody extends StatelessWidget {
  const PhoneExperienceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ExperienceItem(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperienceItem(),
          SizedBox(
            height: 60,
            child: DottedLine(
              dashColor: Colors.white,
              direction: Axis.vertical,
            ),
          ),
          ExperienceItem(),
        ],
      ),
    );
  }
}

class DesktopExperiencesBody extends StatelessWidget {
  const DesktopExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: explen * expScaleFactor + expScaleFactor,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 3,
              height: explen * expScaleFactor + expScaleFactor,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    context.colorScheme.primary.withOpacity(0),
                    context.colorScheme.primary,
                    context.colorScheme.primary.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          for (int i = 0; i < explen; i++) ...[
            if (i.isEven)
              Positioned(
                top: i * 150,
                left: 0,
                right: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ExperienceItem(),
                    SizedBox(
                      width: 100,
                      child: DottedLine(
                        dashColor: context.colorScheme.onBackground,
                      ),
                    ),
                  ],
                ),
              )
            else
              Positioned(
                top: i * 150,
                right: 0,
                left: 400,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: DottedLine(
                        dashColor: context.colorScheme.onBackground,
                      ),
                    ),
                    ExperienceItem(),
                  ],
                ),
              ),
            Positioned(
              top: i * expScaleFactor + expPointFactor - expPointSize / 2,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                width: expPointSize,
                height: expPointSize,
                decoration: BoxDecoration(
                  color: context.colorScheme.onBackground.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: expPointSize / 2,
                  height: expPointSize / 2,
                  decoration: BoxDecoration(
                    color: context.colorScheme.onBackground.withOpacity(0.95),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

const expWidth = 300.0;
const expHeight = 230.0;

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      width: expWidth,
      height: expHeight,
      child: Column(
        children: [
          Text(
            'Experience Title',
            style: context.textStyle.bodyLgBold.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),

          Expanded(
            child: Column(
              children: [
                _ExperienceDescriptionItem(),
                _ExperienceDescriptionItem(),
                _ExperienceDescriptionItem(),
                _ExperienceDescriptionItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ExperienceDescriptionItem extends StatelessWidget {
  const _ExperienceDescriptionItem();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colorScheme.onBackground,
          ),
        ),
        const Gap(6),
        Expanded(
          child: Text(
            'Description Item',
            style: context.textStyle.bodyMdMedium.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
