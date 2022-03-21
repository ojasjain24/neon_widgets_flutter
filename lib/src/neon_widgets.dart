import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

//oNeonContainer
class oNeonContainer extends StatefulWidget {
  oNeonContainer({
    Key? key,
    required this.child,
    this.borderColor = Colors.white,
    this.spreadColor = Colors.deepPurple,
    this.containerColor = Colors.black45,
    this.borderRadius = BorderRadius.zero,
    this.clipBehaviour = Clip.antiAlias,
    this.margin = EdgeInsets.zero,
    this.borderWidth = 5,
    this.lightSpreadRadius = 10,
    this.lightBlurRadius = 60,
    this.transform,
    this.transformAlignment = Alignment.center,
  }) : super(key: key);

  Widget child;
  Color borderColor;
  Color spreadColor;
  Color containerColor;
  BorderRadius borderRadius;
  Clip clipBehaviour;
  EdgeInsets margin;
  double borderWidth;
  double lightSpreadRadius;
  double lightBlurRadius;
  Matrix4? transform;
  Alignment transformAlignment;

  @override
  State<StatefulWidget> createState() {
    return oNeonContainerState();
  }
}

class oNeonContainerState extends State<oNeonContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        transform: widget.transform ?? Matrix4.rotationZ(0),
        transformAlignment: widget.transformAlignment,
        margin: widget.margin,
        clipBehavior: widget.clipBehaviour,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: widget.spreadColor,
              blurRadius: widget.lightBlurRadius, // soften the shadow
              spreadRadius: widget.lightSpreadRadius, //extend the shadow
            ),
          ],
          color: widget.containerColor,
          borderRadius: widget.borderRadius,
          border: Border.all(
            color: widget.borderColor,
            width: widget.borderWidth,
          ),
        ),
        child: widget.child);
  }
}

//oNeonSearchBar
class oNeonSearchBar extends StatefulWidget {
  oNeonSearchBar({
    Key? key,
    this.hint = "Search",
    this.icon = Icons.search,
    this.onSearchChanged,
    this.onSearchTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.backgroundColor = Colors.black38,
    this.hintColor = Colors.white,
    this.iconColor = Colors.white,
    this.iconSize = 20,
    this.fontSize = 15,
    this.borderColor = Colors.white,
    this.spreadColor = Colors.deepPurple,
    this.borderWidth = 3,
    this.lightSpreadRadius = 5,
    this.lightBlurRadius = 30,
    this.hintFontWeight = FontWeight.w100,
    this.textFontWeight = FontWeight.bold,
  }) : super(key: key);

  String hint;
  IconData icon;
  void Function(String?)? onSearchChanged;
  void Function()? onSearchTap;
  EdgeInsets padding;
  BorderRadius borderRadius;
  Color backgroundColor;
  Color hintColor;
  Color iconColor;
  double iconSize;
  double fontSize;
  Color borderColor;
  Color spreadColor;
  double borderWidth;
  double lightSpreadRadius;
  double lightBlurRadius;
  FontWeight hintFontWeight;
  FontWeight textFontWeight;

  @override
  State<StatefulWidget> createState() {
    return oNeonSearchBarState();
  }
}

class oNeonSearchBarState extends State<oNeonSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: widget.spreadColor,
            blurRadius: widget.lightBlurRadius, // soften the shadow
            spreadRadius: widget.lightSpreadRadius, //extend the shadow
          ),
        ],
        border:
            Border.all(color: widget.borderColor, width: widget.borderWidth),
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: TextField(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: (widget.fontSize + (widget.fontSize * 0.3)),
                  fontWeight: widget.textFontWeight),
              onChanged: widget.onSearchChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: widget.hint,
                hintStyle: TextStyle(
                    color: widget.hintColor,
                    fontSize: widget.fontSize,
                    fontWeight: widget.hintFontWeight),
              ),
            ),
          ),
          InkWell(
            onTap: widget.onSearchTap,
            child: Icon(
              widget.icon,
              size: widget.iconSize,
              color: widget.iconColor,
            ),
          ),
        ],
      ),
    );
  }
}

//oNeonAddItemButton
class oNeonAddItemButton extends StatefulWidget {
  oNeonAddItemButton({
    Key? key,
    this.data = "",
    this.icon,
    this.onPressed,
    this.textColor = Colors.white,
    this.margin = const EdgeInsets.all(5),
    this.padding = const EdgeInsets.all(10),
    this.backgroundColor = Colors.black38,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.iconSize = 14,
    this.iconColor = Colors.green,
    this.borderColor = Colors.white,
    this.spreadColor = Colors.deepPurple,
    this.borderWidth = 3,
    this.lightSpreadRadius = 5,
    this.lightBlurRadius = 30,
  }) : super(key: key);

  String data;
  IconData? icon;
  void Function()? onPressed;
  Color textColor;
  EdgeInsets margin;
  EdgeInsets padding;
  Color backgroundColor;
  BorderRadius borderRadius;
  double iconSize;
  Color iconColor;
  Color borderColor;
  Color spreadColor;
  double borderWidth;
  double lightSpreadRadius;
  double lightBlurRadius;

  @override
  State<StatefulWidget> createState() {
    return oNeonAddItemButtonState();
  }
}

class oNeonAddItemButtonState extends State<oNeonAddItemButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          padding: widget.padding,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: widget.spreadColor,
                blurRadius: widget.lightBlurRadius, // soften the shadow
                spreadRadius: widget.lightSpreadRadius, //extend the shadow
              ),
            ],
            border: Border.all(
                color: widget.borderColor, width: widget.borderWidth),
            color: widget.backgroundColor,
            borderRadius: widget.borderRadius,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.data,
                style: TextStyle(
                    color: widget.textColor, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 5,
              ),
              widget.icon == null
                  ? Container()
                  : Icon(
                      widget.icon,
                      size: widget.iconSize,
                      color: widget.iconColor,
                    )
            ],
          ),
        ),
      ),
    );
  }
}

//oNeonRightMsgCard
class oNeonRightMsgCard extends StatefulWidget {
  oNeonRightMsgCard(
      {Key? key,
      this.msg = "",
      this.time = "",
      this.backgroundColor = Colors.black45,
      this.borderColor = Colors.white,
      this.spreadColor = Colors.deepPurple,
      this.borderWidth = 3,
      this.lightSpreadRadius = 5,
      this.lightBlurRadius = 30,
      this.msgFontSize = 15,
      this.timeFontSize = 10,
      this.textColor = Colors.white,
      this.borderRadius = 10})
      : super(key: key);

  String msg;
  String time;
  Color backgroundColor;
  Color borderColor;
  Color spreadColor;
  double borderWidth;
  double lightSpreadRadius;
  double lightBlurRadius;
  double msgFontSize;
  double timeFontSize;
  Color textColor;
  double borderRadius;

  @override
  State<StatefulWidget> createState() {
    return oNeonRightMsgCardState();
  }
}

class oNeonRightMsgCardState extends State<oNeonRightMsgCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 50, right: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: widget.spreadColor,
            blurRadius: widget.lightBlurRadius, // soften the shadow
            spreadRadius: widget.lightSpreadRadius, //extend the shadow
          ),
        ],
        border:
            Border.all(color: widget.borderColor, width: widget.borderWidth),
        color: widget.backgroundColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(widget.borderRadius),
            bottomLeft: Radius.circular(widget.borderRadius),
            bottomRight: Radius.circular(widget.borderRadius)),
      ),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: Text(
                widget.msg,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: widget.msgFontSize,
                ),
              )),
          Container(
              alignment: Alignment.bottomRight,
              child: Text(
                widget.time,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: widget.timeFontSize,
                ),
              )),
        ],
      ),
    );
  }
}

//oNeonLeftMsgCard
class oNeonLeftMsgCard extends StatefulWidget {
  oNeonLeftMsgCard(
      {Key? key,
      this.msg = "",
      this.time = "",
      this.backgroundColor = Colors.black45,
      this.borderColor = Colors.white,
      this.spreadColor = Colors.deepPurple,
      this.borderWidth = 3,
      this.lightSpreadRadius = 5,
      this.lightBlurRadius = 30,
      this.msgFontSize = 15,
      this.timeFontSize = 10,
      this.textColor = Colors.white,
      this.borderRadius = 10})
      : super(key: key);

  String msg;
  String time;
  Color backgroundColor;
  Color borderColor;
  Color spreadColor;
  double borderWidth;
  double lightSpreadRadius;
  double lightBlurRadius;
  double msgFontSize;
  double timeFontSize;
  Color textColor;
  double borderRadius;

  @override
  State<StatefulWidget> createState() {
    return oNeonLeftMsgCardState();
  }
}

class oNeonLeftMsgCardState extends State<oNeonLeftMsgCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 50),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: widget.spreadColor,
            blurRadius: widget.lightBlurRadius, // soften the shadow
            spreadRadius: widget.lightSpreadRadius, //extend the shadow
          ),
        ],
        border:
            Border.all(color: widget.borderColor, width: widget.borderWidth),
        color: widget.backgroundColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(widget.borderRadius),
            bottomLeft: Radius.circular(widget.borderRadius),
            bottomRight: Radius.circular(widget.borderRadius)),
      ),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: Text(
                widget.msg,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: widget.msgFontSize,
                ),
              )),
          Container(
              alignment: Alignment.bottomRight,
              child: Text(
                widget.time,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: widget.timeFontSize,
                ),
              )),
        ],
      ),
    );
  }
}

//oNeonPoint
class oNeonPoint extends StatefulWidget {
  oNeonPoint({
    Key? key,
    this.transform,
    this.transformAlignment = Alignment.center,
    this.spreadColor = Colors.deepPurple,
    this.pointColor = Colors.white,
    this.pointSize = 0.2,
    this.lightBlurRadius = 100,
    this.lightSpreadRadius = 50,
  }) : super(key: key);

  Color spreadColor;
  Color pointColor;
  double lightBlurRadius;
  double lightSpreadRadius;
  double pointSize;
  Matrix4? transform;
  Alignment transformAlignment;

  @override
  State<StatefulWidget> createState() {
    return oNeonPointState();
  }
}

class oNeonPointState extends State<oNeonPoint> {
  @override
  Widget build(BuildContext context) {
    return oNeonContainer(
        transform: widget.transform,
        transformAlignment: widget.transformAlignment,
        borderWidth: widget.pointSize,
        spreadColor: widget.spreadColor,
        borderColor: Colors.transparent,
        containerColor: widget.pointColor,
        lightBlurRadius: widget.lightBlurRadius,
        lightSpreadRadius: widget.lightSpreadRadius,
        borderRadius: BorderRadius.circular(1000),
        child: const SizedBox(
          width: 0,
          height: 0,
        ));
  }
}

//oNeonLine
class oNeonLine extends StatefulWidget {
  oNeonLine({
    Key? key,
    this.transform,
    this.transformAlignment = Alignment.center,
    this.spreadColor = Colors.deepPurple,
    this.lineColor = Colors.white,
    this.lineWidth = 0.2,
    this.lineHeight = 20,
    this.lightBlurRadius = 100,
    this.lightSpreadRadius = 50,
  }) : super(key: key);

  Matrix4? transform;
  Alignment transformAlignment;
  Color spreadColor;
  Color lineColor;
  double lightBlurRadius;
  double lightSpreadRadius;
  double lineWidth;
  double lineHeight;

  @override
  State<StatefulWidget> createState() {
    return oNeonLineState();
  }
}

class oNeonLineState extends State<oNeonLine> {
  @override
  Widget build(BuildContext context) {
    return oNeonContainer(
        transform: widget.transform,
        transformAlignment: widget.transformAlignment,
        borderWidth: widget.lineWidth > widget.lineHeight
            ? widget.lineHeight
            : widget.lineWidth,
        spreadColor: widget.spreadColor,
        borderColor: Colors.transparent,
        containerColor: widget.lineColor,
        lightBlurRadius: widget.lightBlurRadius,
        lightSpreadRadius: widget.lightSpreadRadius,
        borderRadius: BorderRadius.circular(1000),
        child: Container(
          color: widget.lineColor,
          width: widget.lineWidth > widget.lineHeight ? widget.lineWidth : 0,
          height: widget.lineWidth > widget.lineHeight ? 0 : widget.lineHeight,
        ));
  }
}

class oNeonText extends StatefulWidget {
  oNeonText({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.center,
    this.fontStyle = FontStyle.normal,
    this.textOverflow = TextOverflow.visible,
    this.textWidthBasis = TextWidthBasis.parent,
    this.textDirection = TextDirection.ltr,
    this.isSoftWrap = true,
    this.textSize = 20,
    this.fontWeight = FontWeight.normal,
    this.spreadColor = Colors.deepPurple,
    this.blurRadius = 20,
    this.textColor = Colors.white,
  }) : super(key: key);

  String text;
  TextAlign textAlign;
  FontWeight fontWeight;
  double textSize, blurRadius;
  Color textColor, spreadColor;
  TextOverflow textOverflow;
  bool isSoftWrap;
  TextDirection textDirection;
  TextWidthBasis textWidthBasis;
  FontStyle fontStyle;
  String? fontFamily;
  double? wordSpacing, letterSpacing;
  TextWidthBasis? textWidgetBasis;
  TextHeightBehavior? textHeightBehavior;
  int? maxLine;

  @override
  State<StatefulWidget> createState() {
    return oNeonTextState();
  }
}

class oNeonTextState extends State<oNeonText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        fontWeight: widget.fontWeight,
        fontSize: widget.textSize,
        color: widget.textColor,
        shadows: [
          Shadow(color: widget.spreadColor, blurRadius: widget.blurRadius),
        ],
        fontStyle: widget.fontStyle,
        fontFamily: widget.fontFamily,
        wordSpacing: widget.wordSpacing,
        overflow: widget.textOverflow,
        letterSpacing: widget.letterSpacing,
      ),
      maxLines: widget.maxLine,
      overflow: widget.textOverflow,
      softWrap: widget.isSoftWrap,
      textDirection: widget.textDirection,
      textHeightBehavior: widget.textHeightBehavior,
      textWidthBasis: widget.textWidgetBasis,
    );
  }
}

//
//Flicker neon widgets
//

//oFlickerNeonContainer
class oFlickerNeonContainer extends StatefulWidget {
  oFlickerNeonContainer({
    Key? key,
    required this.child,
    this.transform,
    this.transformAlignment = Alignment.center,
    this.borderColor = Colors.white,
    this.spreadColor = Colors.deepPurple,
    this.containerColor = Colors.black45,
    this.borderRadius = BorderRadius.zero,
    this.clipBehaviour = Clip.antiAlias,
    this.margin = EdgeInsets.zero,
    this.borderWidth = 5,
    this.lightSpreadRadius = 10,
    this.lightBlurRadius = 60,
    this.alignment = Alignment.center,
    this.randomFlicker = true,
    this.flickerTimeInMilliSeconds = 3000,
  }) : super(key: key);

  Widget child;
  Color borderColor;
  Color spreadColor;
  Color containerColor;
  BorderRadius borderRadius;
  Clip clipBehaviour;
  EdgeInsets margin;
  double borderWidth;
  double lightSpreadRadius;
  double lightBlurRadius;
  Alignment alignment;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;
  Matrix4? transform;
  Alignment transformAlignment;

  @override
  State<StatefulWidget> createState() {
    return oFlickerNeonContainerState();
  }
}

class oFlickerNeonContainerState extends State<oFlickerNeonContainer>
    with TickerProviderStateMixin {
  late AnimationController controller;
  int randomNumber = Random().nextInt(3000);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(
            milliseconds: widget.randomFlicker
                ? randomNumber
                : widget.flickerTimeInMilliSeconds),
        vsync: this);

    controller.addStatusListener((status) {
      randomNumber = Random().nextInt(widget.flickerTimeInMilliSeconds);
      setState(() {});
      if (status == AnimationStatus.completed) {
        controller.repeat(
            reverse: true,
            period: Duration(
                milliseconds: widget.randomFlicker
                    ? randomNumber
                    : widget.flickerTimeInMilliSeconds));
      } else if (status == AnimationStatus.dismissed) {
        sleep(const Duration(milliseconds: 200));
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        transformAlignment: widget.transformAlignment,
        transform: widget.transform ?? Matrix4.rotationZ(0),
        margin: widget.margin,
        clipBehavior: widget.clipBehaviour,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: widget.spreadColor.withOpacity(controller.value),
                blurRadius: widget.lightBlurRadius, // soften the shadow
                spreadRadius: widget.lightSpreadRadius, //extend the shadow
              ),
            ],
            color: widget.containerColor.withOpacity(controller.value),
            borderRadius: widget.borderRadius,
            border: Border.all(
                color: controller.value > 0.5
                    ? widget.borderColor
                    : Colors.white70,
                width: widget.borderWidth)),
        child: widget.child);
  }
}

//oFlickerNeonPoint
class oFlickerNeonPoint extends StatefulWidget {
  oFlickerNeonPoint({
    Key? key,
    this.transform,
    this.transformAlignment = Alignment.center,
    this.spreadColor = Colors.deepPurple,
    this.pointColor = Colors.white,
    this.pointSize = 0.2,
    this.lightBlurRadius = 100,
    this.lightSpreadRadius = 50,
    this.randomFlicker = true,
    this.flickerTimeInMilliSeconds = 3000,
  }) : super(key: key);

  Matrix4? transform;
  Alignment transformAlignment;
  Color spreadColor;
  Color pointColor;
  double lightBlurRadius;
  double lightSpreadRadius;
  double pointSize;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;

  @override
  State<StatefulWidget> createState() {
    return oFlickerNeonPointState();
  }
}

class oFlickerNeonPointState extends State<oFlickerNeonPoint> {
  @override
  Widget build(BuildContext context) {
    return oFlickerNeonContainer(
        transform: widget.transform,
        transformAlignment: widget.transformAlignment,
        borderWidth: widget.pointSize,
        randomFlicker: widget.randomFlicker,
        flickerTimeInMilliSeconds: widget.flickerTimeInMilliSeconds,
        spreadColor: widget.spreadColor,
        borderColor: Colors.transparent,
        containerColor: widget.pointColor,
        lightBlurRadius: widget.lightBlurRadius,
        lightSpreadRadius: widget.lightSpreadRadius,
        borderRadius: BorderRadius.circular(1000),
        child: const SizedBox(
          width: 0,
          height: 0,
        ));
  }
}

//oFlickerNeonLine
class oFlickerNeonLine extends StatefulWidget {
  oFlickerNeonLine({
    Key? key,
    this.transform,
    this.transformAlignment = Alignment.center,
    this.spreadColor = Colors.deepPurple,
    this.lineColor = Colors.white,
    this.lineWidth = 0.2,
    this.lineHeight = 20,
    this.lightBlurRadius = 100,
    this.lightSpreadRadius = 50,
    this.randomFlicker = true,
    this.flickerTimeInMilliSeconds = 3000,
  }) : super(key: key);

  Matrix4? transform;
  Alignment transformAlignment;
  Color spreadColor;
  Color lineColor;
  double lightBlurRadius;
  double lightSpreadRadius;
  double lineWidth;
  double lineHeight;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;

  @override
  State<StatefulWidget> createState() {
    return oFlickerNeonLineState();
  }
}

class oFlickerNeonLineState extends State<oFlickerNeonLine> {
  @override
  Widget build(BuildContext context) {
    return oFlickerNeonContainer(
        transform: widget.transform,
        transformAlignment: widget.transformAlignment,
        borderWidth: widget.lineWidth > widget.lineHeight
            ? widget.lineHeight
            : widget.lineWidth,
        randomFlicker: widget.randomFlicker,
        flickerTimeInMilliSeconds: widget.flickerTimeInMilliSeconds,
        spreadColor: widget.spreadColor,
        borderColor: Colors.transparent,
        containerColor: widget.lineColor,
        lightBlurRadius: widget.lightBlurRadius,
        lightSpreadRadius: widget.lightSpreadRadius,
        borderRadius: BorderRadius.circular(1000),
        child: Container(
          color: widget.lineColor,
          width: widget.lineWidth > widget.lineHeight ? widget.lineWidth : 0,
          height: widget.lineWidth > widget.lineHeight ? 0 : widget.lineHeight,
        ));
  }
}

class oFlickerNeonText extends StatefulWidget {
  oFlickerNeonText({
    Key? key,
    required this.text,
    this.textAlign = TextAlign.center,
    this.fontStyle = FontStyle.normal,
    this.textOverflow = TextOverflow.visible,
    this.textWidthBasis = TextWidthBasis.parent,
    this.textDirection = TextDirection.ltr,
    this.isSoftWrap = true,
    this.textSize = 20,
    this.fontWeight = FontWeight.normal,
    this.spreadColor = Colors.deepPurple,
    this.blurRadius = 20,
    this.textColor = Colors.white,
    this.randomFlicker = true,
    this.flickerTimeInMilliSeconds = 3000,
  }) : super(key: key);

  String text;
  TextAlign textAlign;
  FontWeight fontWeight;
  double textSize, blurRadius;
  Color textColor, spreadColor;
  TextOverflow textOverflow;
  bool isSoftWrap;
  TextDirection textDirection;
  TextWidthBasis textWidthBasis;
  FontStyle fontStyle;
  String? fontFamily;
  double? wordSpacing, letterSpacing;
  TextWidthBasis? textWidgetBasis;
  TextHeightBehavior? textHeightBehavior;
  int? maxLine;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;

  @override
  State<StatefulWidget> createState() {
    return oFlickerNeonTextState();
  }
}

class oFlickerNeonTextState extends State<oFlickerNeonText>
    with TickerProviderStateMixin {
  late AnimationController controller;
  int randomNumber = Random().nextInt(3000);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(
            milliseconds: widget.randomFlicker
                ? randomNumber
                : widget.flickerTimeInMilliSeconds),
        vsync: this);

    controller.addStatusListener((status) {
      randomNumber = Random().nextInt(widget.flickerTimeInMilliSeconds);
      setState(() {});
      if (status == AnimationStatus.completed) {
        controller.repeat(
            reverse: true,
            period: Duration(
                milliseconds: widget.randomFlicker
                    ? randomNumber
                    : widget.flickerTimeInMilliSeconds));
      } else if (status == AnimationStatus.dismissed) {
        sleep(const Duration(milliseconds: 200));
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        fontWeight: widget.fontWeight,
        fontSize: widget.textSize,
        color: controller.value > 0.5 ? widget.textColor : Colors.white70,
        shadows: [
          Shadow(
              color: widget.spreadColor.withOpacity(controller.value),
              blurRadius: widget.blurRadius),
        ],
        fontStyle: widget.fontStyle,
        fontFamily: widget.fontFamily,
        wordSpacing: widget.wordSpacing,
        overflow: widget.textOverflow,
        letterSpacing: widget.letterSpacing,
      ),
      maxLines: widget.maxLine,
      overflow: widget.textOverflow,
      softWrap: widget.isSoftWrap,
      textDirection: widget.textDirection,
      textHeightBehavior: widget.textHeightBehavior,
      textWidthBasis: widget.textWidgetBasis,
    );
  }
}
