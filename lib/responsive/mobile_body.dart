import 'package:flutter/material.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({super.key});

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controllerMobile;
  late Animation<Alignment> _topAlignmentAnimationMobile;
  late Animation<Alignment> _bottomAlignmentAnimationMobile;

  @override
  void initState() {
    super.initState();
    _controllerMobile =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _topAlignmentAnimationMobile = TweenSequence<Alignment>(
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
    ).animate(_controllerMobile);

    _bottomAlignmentAnimationMobile = TweenSequence<Alignment>(
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
    ).animate(_controllerMobile);

    _controllerMobile.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: AnimatedBuilder(
                animation: _controllerMobile,
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
                        begin: _topAlignmentAnimationMobile.value,
                        end: _bottomAlignmentAnimationMobile.value,
                      ),
                    ),
                  );
                })),
      ),
    );
  }
}
