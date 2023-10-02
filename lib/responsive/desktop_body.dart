import 'package:flutter/material.dart';

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({super.key});

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controllerdesktop;
  late Animation<Alignment> _topAlignmentAnimationDesktop;
  late Animation<Alignment> _bottomAlignmentAnimationDesktop;

  @override
  void initState() {
    super.initState();
    _controllerdesktop =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _topAlignmentAnimationDesktop = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.bottomLeft),
          weight: 1,
        ),
      ],
    ).animate(_controllerdesktop);

    _bottomAlignmentAnimationDesktop = TweenSequence<Alignment>(
      [
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1,
        ),
        TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1,
        ),
      ],
    ).animate(_controllerdesktop);

    _controllerdesktop.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedBuilder(
            animation: _controllerdesktop,
            builder: (context, _) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: const [
                      Color(0xffD67BFF),
                      Color(0xffFFB6D9),
                    ],
                    begin: _topAlignmentAnimationDesktop.value,
                    end: _bottomAlignmentAnimationDesktop.value,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
