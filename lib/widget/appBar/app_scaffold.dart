import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/style/app_size.dart';
import 'package:portfolio/widget/appBar/my_app_bar.dart';
import 'package:portfolio/widget/background_blur.dart';
import 'package:portfolio/widget/my_footer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.slivers});
  final List<Widget> slivers;

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
                  ...slivers,
                  const SliverToBoxAdapter(child: MyFooter()),
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
