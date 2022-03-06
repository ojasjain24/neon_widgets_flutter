import 'dart:math';
import 'package:flutter/material.dart';
import '../neon_widgets.dart';

const List<Color> RGBCOLORS = [Colors.red, Colors.green, Colors.blue];
const List<Color> SQUARECOLORS = [
  Colors.yellowAccent,
  Colors.lightGreen,
  Colors.teal,
  Colors.orangeAccent
];

//Triangular progress bar or loader
class oNeonTriangleVerticesProgressBar extends StatefulWidget {
  oNeonTriangleVerticesProgressBar(
      {Key? key,
      this.spreadColorsList = RGBCOLORS,
      this.pointSize = 5,
      this.lightBlurRadius = 80,
      this.lightSpreadRadius = 40,
      this.randomFlicker = false,
      this.flickerTimeInMilliSeconds = 500,
      this.flicker = false,
      this.progressBarRadius = 30})
      : super(key: key);

  List<Color> spreadColorsList;
  bool flicker;
  double pointSize;
  double lightBlurRadius;
  double lightSpreadRadius;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;
  double progressBarRadius;

  @override
  State<StatefulWidget> createState() {
    return oNeonTriangleVerticesProgressBarState();
  }
}

class oNeonTriangleVerticesProgressBarState
    extends State<oNeonTriangleVerticesProgressBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat();

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
                  oFlickerNeonPoint(
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
                      oFlickerNeonPoint(
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
                      oFlickerNeonPoint(
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
class oNeonSquareVerticesProgressBar extends StatefulWidget {
  oNeonSquareVerticesProgressBar(
      {Key? key,
      this.spreadColorsList = SQUARECOLORS,
      this.pointSize = 5,
      this.lightBlurRadius = 80,
      this.lightSpreadRadius = 40,
      this.randomFlicker = false,
      this.flickerTimeInMilliSeconds = 500,
      this.flicker = false,
      this.progressBarRadius = 60})
      : super(key: key);

  List<Color> spreadColorsList;
  bool flicker;
  double pointSize;
  double lightBlurRadius;
  double lightSpreadRadius;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;
  double progressBarRadius;

  @override
  State<StatefulWidget> createState() {
    return oNeonSquareVerticesProgressBarState();
  }
}

class oNeonSquareVerticesProgressBarState
    extends State<oNeonSquareVerticesProgressBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat();

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
                      oFlickerNeonPoint(
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
                      oFlickerNeonPoint(
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
                      oFlickerNeonPoint(
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
                      oFlickerNeonPoint(
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
class oNeonCustomVerticesProgressBar extends StatefulWidget {
  oNeonCustomVerticesProgressBar(
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

  int number;
  bool flicker;
  double pointSize;
  double lightBlurRadius;
  double lightSpreadRadius;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;
  double progressBarRadius;
  Color spreadColor;
  bool randomColor;

  @override
  State<StatefulWidget> createState() {
    return oNeonCustomVerticesProgressBarState();
  }
}

class oNeonCustomVerticesProgressBarState
    extends State<oNeonCustomVerticesProgressBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat();

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
              oFlickerNeonPoint(
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
                        ? oFlickerNeonPoint(
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
                              oFlickerNeonPoint(
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
                              oFlickerNeonPoint(
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
class oImageProgressBar extends StatefulWidget {
  oImageProgressBar({
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

  bool flicker;
  double pointSize;
  double lightBlurRadius;
  double lightSpreadRadius;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;
  Color spreadColor;
  bool randomColor;
  String image;
  double imageHeight;
  double imageWidth;

  @override
  State<StatefulWidget> createState() {
    return oImageProgressBarState();
  }
}

class oImageProgressBarState extends State<oImageProgressBar>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat();

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
                      oFlickerNeonPoint(
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
              child: FlutterLogo(size: 200),
            ),
          ),
        ],
      ),
    );
  }
}
