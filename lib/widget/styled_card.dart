import 'package:flutter/cupertino.dart';
import 'package:portfolio/extension.dart';

class StyledCard extends StatefulWidget {
  const StyledCard({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    required this.child,
  });

  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Widget child;

  @override
  State<StyledCard> createState() => _StyledCardState();
}

class _StyledCardState extends State<StyledCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: widget.padding ?? EdgeInsets.all(context.insets.cardPadding),
      decoration: BoxDecoration(
        border: Border.all(color: context.colorScheme.outline),
        color: context.colorScheme.surface,
        borderRadius:
            widget.borderRadius ?? const BorderRadius.all(Radius.circular(24)),
      ),
      child: widget.child,
    );
  }
}
