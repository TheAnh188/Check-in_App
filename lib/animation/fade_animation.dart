// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  final bool direction;

  const FadeAnimation(this.delay, this.direction, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    final tweenLtr = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 500)) //tốc độ rõ chữ
          .thenTween(
        'X',
        Tween(begin: -120.0, end: 0.0),
        duration: const Duration(milliseconds: 500), //tốc độ chạy
        curve: Curves.easeOut,
      );

    final tweenRtf = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 500)) //tốc độ rõ chữ
          .thenTween(
        'X',
        Tween(begin: 120.0, end: 0.0),
        duration: const Duration(milliseconds: 500), //tốc độ chạy
        curve: Curves.easeOut,
      );

    return PlayAnimationBuilder<Movie>(
      delay: Duration(milliseconds: (500 * delay).round()), // tốc dộ xuất hiện
      duration: direction ? tweenRtf.duration : tweenLtr.duration,
      tween: direction ? tweenRtf : tweenLtr,
      child: child,
      builder: (context, value, child) => Opacity(
        opacity: value.get("opacity"),
        child: Transform.translate(
            offset: Offset(value.get("X"), 0), child: child),
      ),
    );
  }
}
