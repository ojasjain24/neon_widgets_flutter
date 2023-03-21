import 'dart:math';

import 'package:flutter/material.dart';

import '../neon_widgets.dart';

const List<Color> rgbColors = [Colors.red, Colors.green, Colors.blue];
const List<Color> squareColors = [
  Colors.yellowAccent,
  Colors.lightGreen,
  Colors.teal,
  Colors.orangeAccent
];

//Triangular progress bar or loader
class NeonTriangleVerticesProgressBar extends StatefulWidget {
  const NeonTriangleVerticesProgressBar(
      {Key? key,
      this.spreadColorsList = rgbColors,
      this.pointSize = 5,
      this.lightBlurRadius = 80,
      this.lightSpreadRadius = 40,
      this.randomFlicker = false,
      this.flickerTimeInMilliSeconds = 500,
      this.flicker = false,
      this.progressBarRadius = 30})
      : super(key: key);

  final List<Color> spreadColorsList;
  final bool flicker;
  final double pointSize;
  final double lightBlurRadius;
  final double lightSpreadRadius;
  final bool randomFlicker;
  final int flickerTimeInMilliSeconds;
  final double progressBarRadius;

  @override
  State<StatefulWidget> createState() {
    return NeonTriangleVerticesProgressBarState();
  }
}

class NeonTriangleVerticesProgressBarState
    extends State<NeonTriangleVerticesProgressBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Transform.rotate(
              angle: _controller.value * 2 * 3.14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlickerNeonPoint(
                    randomFlicker: widget.randomFlicker,
                    lightSpreadRadius: widget.lightSpreadRadius,
                    lightBlurRadius: widget.lightSpreadRadius,
                    flickerTimeInMilliSeconds:
                        widget.flicker ? widget.flickerTimeInMilliSeconds : 0,
                    pointSize: widget.pointSize,
                    pointColor: Colors.white,
                    spreadColor: widget.spreadColorsList[0],
                  ),
                  SizedBox(
                    height: widget.progressBarRadius * 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlickerNeonPoint(
                        randomFlicker: widget.randomFlicker,
                        lightSpreadRadius: widget.lightSpreadRadius,
                        lightBlurRadius: widget.lightSpreadRadius,
                        flickerTimeInMilliSeconds: widget.flicker
                            ? widget.flickerTimeInMilliSeconds
                            : 0,
                        pointSize: widget.pointSize,
                        pointColor: Colors.white,
                        spreadColor: widget.spreadColorsList[1],
                      ),
                      SizedBox(
                        width: widget.progressBarRadius * sqrt(3),
                      ),
                      FlickerNeonPoint(
                        randomFlicker: widget.randomFlicker,
                        lightSpreadRadius: widget.lightSpreadRadius,
                        lightBlurRadius: widget.lightSpreadRadius,
                        flickerTimeInMilliSeconds: widget.flicker
                            ? widget.flickerTimeInMilliSeconds
                            : 0,
                        pointSize: widget.pointSize,
                        pointColor: Colors.white,
                        spreadColor: widget.spreadColorsList[2],
                      ),
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }
}

//Square progress bar or loader
class NeonSquareVerticesProgressBar extends StatefulWidget {
  const NeonSquareVerticesProgressBar(
      {Key? key,
      this.spreadColorsList = squareColors,
      this.pointSize = 5,
      this.lightBlurRadius = 80,
      this.lightSpreadRadius = 40,
      this.randomFlicker = false,
      this.flickerTimeInMilliSeconds = 500,
      this.flicker = false,
      this.progressBarRadius = 60})
      : super(key: key);

  final List<Color> spreadColorsList;
  final bool flicker;
  final double pointSize;
  final double lightBlurRadius;
  final double lightSpreadRadius;
  final bool randomFlicker;
  final int flickerTimeInMilliSeconds;
  final double progressBarRadius;

  @override
  State<StatefulWidget> createState() {
    return NeonSquareVerticesProgressBarState();
  }
}

class NeonSquareVerticesProgressBarState
    extends State<NeonSquareVerticesProgressBar> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, child) {
          return Transform.rotate(
              angle: _controller.value * 2 * 3.14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlickerNeonPoint(
                        randomFlicker: widget.randomFlicker,
                        lightSpreadRadius: widget.lightSpreadRadius,
                        lightBlurRadius: widget.lightSpreadRadius,
                        flickerTimeInMilliSeconds: widget.flicker
                            ? widget.flickerTimeInMilliSeconds
                            : 0,
                        pointSize: widget.pointSize,
                        pointColor: Colors.white,
                        spreadColor: widget.spreadColorsList[0],
                      ),
                      SizedBox(
                        width: widget.progressBarRadius,
                      ),
                      FlickerNeonPoint(
                        randomFlicker: widget.randomFlicker,
                        lightSpreadRadius: widget.lightSpreadRadius,
                        lightBlurRadius: widget.lightSpreadRadius,
                        flickerTimeInMilliSeconds: widget.flicker
                            ? widget.flickerTimeInMilliSeconds
                            : 0,
                        pointSize: widget.pointSize,
                        pointColor: Colors.white,
                        spreadColor: widget.spreadColorsList[1],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: widget.progressBarRadius,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlickerNeonPoint(
                        randomFlicker: widget.randomFlicker,
                        lightSpreadRadius: widget.lightSpreadRadius,
                        lightBlurRadius: widget.lightSpreadRadius,
                        flickerTimeInMilliSeconds: widget.flicker
                            ? widget.flickerTimeInMilliSeconds
                            : 0,
                        pointSize: widget.pointSize,
                        pointColor: Colors.white,
                        spreadColor: widget.spreadColorsList[2],
                      ),
                      SizedBox(
                        width: widget.progressBarRadius,
                      ),
                      FlickerNeonPoint(
                        randomFlicker: widget.randomFlicker,
                        lightSpreadRadius: widget.lightSpreadRadius,
                        lightBlurRadius: widget.lightSpreadRadius,
                        flickerTimeInMilliSeconds: widget.flicker
                            ? widget.flickerTimeInMilliSeconds
                            : 0,
                        pointSize: widget.pointSize,
                        pointColor: Colors.white,
                        spreadColor: widget.spreadColorsList[3],
                      ),
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }
}

//n number vertices polygon progress bar or loader
class NeonCustomVerticesProgressBar extends StatefulWidget {
  const NeonCustomVerticesProgressBar(
      {Key? key,
      required this.number,
      this.pointSize = 3,
      this.lightBlurRadius = 40,
      this.lightSpreadRadius = 20,
      this.randomFlicker = false,
      this.flickerTimeInMilliSeconds = 500,
      this.flicker = false,
      this.spreadColor = Colors.lightBlueAccent,
      this.randomColor = false,
      this.progressBarRadius = 30})
      : super(key: key);

  final int number;
  final bool flicker;
  final double pointSize;
  final double lightBlurRadius;
  final double lightSpreadRadius;
  final bool randomFlicker;
  final int flickerTimeInMilliSeconds;
  final double progressBarRadius;
  final Color spreadColor;
  final bool randomColor;

  @override
  State<StatefulWidget> createState() {
    return NeonCustomVerticesProgressBarState();
  }
}

class NeonCustomVerticesProgressBarState
    extends State<NeonCustomVerticesProgressBar> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Color> randomColorList = List.generate(
        widget.number,
        (i) =>
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0));

    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * 3.14,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlickerNeonPoint(
                spreadColor: widget.randomColor
                    ? randomColorList[0]
                    : widget.spreadColor,
                randomFlicker: widget.randomFlicker,
                lightSpreadRadius: widget.lightSpreadRadius,
                lightBlurRadius: widget.lightSpreadRadius,
                flickerTimeInMilliSeconds:
                    widget.flicker ? widget.flickerTimeInMilliSeconds : 0,
                pointSize: widget.pointSize,
                pointColor: Colors.white,
              ),
              for (int i = 1;
                  widget.number % 2 == 1
                      ? i < ((widget.number) / 2)
                      : i < ((widget.number + 1) / 2);
                  i++)
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      height: (widget.progressBarRadius *
                              (1 - cos(2 * pi * i / widget.number))) -
                          (widget.progressBarRadius *
                              (1 - cos(2 * pi * (i - 1) / widget.number))),
                    ),
                    (2 * pi * i / widget.number == pi && widget.number % 2 == 0)
                        ? FlickerNeonPoint(
                            spreadColor: widget.randomColor
                                ? randomColorList[i + 1]
                                : widget.spreadColor,
                            randomFlicker: widget.randomFlicker,
                            lightSpreadRadius: widget.lightSpreadRadius,
                            lightBlurRadius: widget.lightSpreadRadius,
                            flickerTimeInMilliSeconds: widget.flicker
                                ? widget.flickerTimeInMilliSeconds
                                : 0,
                            pointSize: widget.pointSize,
                            pointColor: Colors.white,
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlickerNeonPoint(
                                spreadColor: widget.randomColor
                                    ? randomColorList[i]
                                    : widget.spreadColor,
                                randomFlicker: widget.randomFlicker,
                                lightSpreadRadius: widget.lightSpreadRadius,
                                lightBlurRadius: widget.lightSpreadRadius,
                                flickerTimeInMilliSeconds: widget.flicker
                                    ? widget.flickerTimeInMilliSeconds
                                    : 0,
                                pointSize: widget.pointSize,
                                pointColor: Colors.white,
                              ),
                              SizedBox(
                                  height: 0,
                                  width: 2 *
                                      widget.progressBarRadius *
                                      sin(2 * pi * i / widget.number)),
                              FlickerNeonPoint(
                                spreadColor: widget.randomColor
                                    ? randomColorList[i + 1]
                                    : widget.spreadColor,
                                randomFlicker: widget.randomFlicker,
                                lightSpreadRadius: widget.lightSpreadRadius,
                                lightBlurRadius: widget.lightSpreadRadius,
                                flickerTimeInMilliSeconds: widget.flicker
                                    ? widget.flickerTimeInMilliSeconds
                                    : 0,
                                pointSize: widget.pointSize,
                                pointColor: Colors.white,
                              ),
                            ],
                          )
                  ],
                )
            ],
          ),
        );
      },
    );
  }
}

//Image progress bar or loader
class ImageProgressBar extends StatefulWidget {
  const ImageProgressBar({
    Key? key,
    this.pointSize = 5,
    this.lightBlurRadius = 200,
    this.lightSpreadRadius = 100,
    this.randomFlicker = false,
    this.flickerTimeInMilliSeconds = 500,
    this.flicker = false,
    this.randomColor = true,
    this.imageHeight = 100,
    this.imageWidth = 100,
    required this.image,
    this.spreadColor = Colors.lightBlueAccent,
  }) : super(key: key);

  final bool flicker;
  final double pointSize;
  final double lightBlurRadius;
  final double lightSpreadRadius;
  final bool randomFlicker;
  final int flickerTimeInMilliSeconds;
  final Color spreadColor;
  final bool randomColor;
  final String image;
  final double imageHeight;
  final double imageWidth;

  @override
  State<StatefulWidget> createState() => ImageProgressBarState();
}

class ImageProgressBarState extends State<ImageProgressBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (_, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * 3.14,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      FlickerNeonPoint(
                        spreadColor: widget.randomColor
                            ? Color((Random().nextDouble() * 0xFFFFFF).toInt())
                                .withOpacity(1.0)
                            : widget.spreadColor,
                        randomFlicker: widget.randomFlicker,
                        lightSpreadRadius: widget.lightSpreadRadius,
                        lightBlurRadius: widget.lightSpreadRadius,
                        flickerTimeInMilliSeconds: widget.flicker
                            ? widget.flickerTimeInMilliSeconds
                            : 0,
                        pointSize: widget.pointSize,
                        pointColor: Colors.white,
                      ),
                      Image.asset(
                        widget.image,
                        height: widget.imageHeight,
                        width: widget.imageWidth,
                      ),
                    ],
                  ),
                );
              },
              child: const FlutterLogo(size: 200),
            ),
          ),
        ],
      ),
    );
  }
}
