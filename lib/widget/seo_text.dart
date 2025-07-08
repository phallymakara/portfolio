import 'package:flutter/cupertino.dart';

class SEOtext extends StatelessWidget {
  const SEOtext(this.text, {super.key, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
