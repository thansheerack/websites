import 'package:flutter/material.dart';

class AnimatedContainer1 extends StatefulWidget {
  const AnimatedContainer1({Key? key}) : super(key: key);

  @override
  _AnimatedContainer1State createState() => _AnimatedContainer1State();
}

class _AnimatedContainer1State extends State<AnimatedContainer1>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Align(
            alignment: _animation.value,
            child: child,
          );
        },
        child: Container(
          height: 500,
          width: 500,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('images/image14.png'),
              Image.asset('images/image16.png', fit: BoxFit.cover),
            ],
          ),
        ),
      ),
    );
  }
}
