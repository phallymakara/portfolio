import 'package:flutter/cupertino.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class SEOtext extends StatelessWidget {
  const SEOtext(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.textRendererStyle,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;
  final TextRendererStyle? textRendererStyle;
  final int? maxLines;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
