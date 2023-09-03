import 'package:e_shop/common/utils/logger_utils.dart';
import 'package:flutter/material.dart';

const shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFEBEBF4),
    Color(0xFFF4F4F4),
    Color(0xFFEBEBF4),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);

class _SlidingGradientTransform extends GradientTransform {
  final double slidePercent; // от 0 до 1

  const _SlidingGradientTransform(this.slidePercent);

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0, 0);
  }
}

class Shimmer extends StatefulWidget {
  static ShimmerState? of(BuildContext context) {
    return context.findAncestorStateOfType<ShimmerState>();
  }

  const Shimmer({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  ShimmerState createState() => ShimmerState();
}

class ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  //* ====== Variables ======
  late AnimationController _shimmerController;

  //* ====== Methods ======
  Listenable get shimmerChanges => _shimmerController;

  LinearGradient get gradient => LinearGradient(
        colors: shimmerGradient.colors,
        stops: shimmerGradient.stops,
        begin: shimmerGradient.begin,
        end: shimmerGradient.end,
        transform: _SlidingGradientTransform(_shimmerController.value),
      );

  bool get isSized => (context.findRenderObject() as RenderBox).hasSize;

  Size get size => (context.findRenderObject() as RenderBox).size;

  Offset getDescendantOffset({
    required RenderBox descendant,
    Offset offset = Offset.zero,
  }) {
    final shimmerBox = context.findRenderObject() as RenderBox;
    return descendant.localToGlobal(offset, ancestor: shimmerBox);
  }

  //* ====== Overrides ======
  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(
        min: -0.5,
        max: 1.5,
        period: const Duration(milliseconds: 1000),
      );
    logger.i('Shimmer controller was initialized');
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    logger.i('Shimmer controller was disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}
