import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

/*Properties :
  Widget child;
  Color borderColor;
  Color spreadColor;
  Color containerColor;
  BorderRadius borderRadius;
  Clip clipBehavior;
  EdgeInsets margin, padding;
  double borderWidth;
  double lightSpreadRadius;
  double lightBlurRadius;
  Matrix4? transform;
  Alignment transformAlignment;
  double? width;
  double? height;
  Alignment? alignment;
  bool randomFlicker;
  int flickerTimeInMilliSeconds;


* */

//NeonContainer
class NeonContainer extends StatelessWidget {
  const NeonContainer({
    Key? key,
    required this.child,
    this.borderColor = Colors.white,
    this.spreadColor = Colors.deepPurple,
    this.containerColor = Colors.black45,
    this.borderRadius = BorderRadius.zero,
    this.clipBehavior = Clip.antiAlias,
    this.margin = EdgeInsets.zero,
    this.borderWidth = 5,
    this.lightSpreadRadius = 10,
    this.lightBlurRadius = 60,
    this.transform,
    this.padding = EdgeInsets.zero,
    this.transformAlignment = Alignment.center,
    this.width,
    this.height,
    this.alignment,
  }) : super(key: key);

  final Widget child;
  final Color borderColor;
  final Color spreadColor;
  final Color containerColor;
  final BorderRadius borderRadius;
  final Clip clipBehavior;
  final EdgeInsets margin, padding;
  final double borderWidth;
  final double lightSpreadRadius;
  final double lightBlurRadius;
  final Matrix4? transform;
  final Alignment transformAlignment;
  final double? width, height;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      transform: transform ?? Matrix4.rotationZ(0),
      transformAlignment: transformAlignment,
      margin: margin,
      clipBehavior: clipBehavior,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: spreadColor,
            blurRadius: lightBlurRadius, // soften the shadow
            spreadRadius: lightSpreadRadius, //extend the shadow
          ),
        ],
        color: containerColor,
        borderRadius: borderRadius,
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      alignment: alignment,
      child: child,
    );
  }
}

//NeonSearchBar
class NeonSearchBar extends StatelessWidget {
  const NeonSearchBar({
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
    this.transform,
    this.alignment,
    this.width = double.infinity,
    this.height,
    this.clip = Clip.antiAlias,
    this.margin = EdgeInsets.zero,
    this.transformAlignment = Alignment.center,
  }) : super(key: key);

  final String hint;
  final IconData icon;
  final void Function(String?)? onSearchChanged;
  final void Function()? onSearchTap;
  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final Color hintColor;
  final Color iconColor;
  final double iconSize;
  final double fontSize;
  final Color borderColor;
  final Color spreadColor;
  final double borderWidth;
  final double lightSpreadRadius;
  final double lightBlurRadius;
  final FontWeight hintFontWeight;
  final FontWeight textFontWeight;
  final Alignment? alignment;
  final double? height;
  final double width;
  final EdgeInsets margin;
  final Clip clip;
  final Matrix4? transform;
  final Alignment transformAlignment;

  @override
  Widget build(BuildContext context) {
    return NeonContainer(
      padding: padding,
      spreadColor: spreadColor,
      lightBlurRadius: lightBlurRadius,
      // soften the shadow
      lightSpreadRadius: lightSpreadRadius,
      //extend the shadow
      borderColor: borderColor,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      containerColor: backgroundColor,

      width: width,
      alignment: alignment,
      margin: margin,
      clipBehavior: clip,
      transform: transform,
      transformAlignment: transformAlignment,
      height: height,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: TextField(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: (fontSize + (fontSize * 0.3)),
                  fontWeight: textFontWeight),
              onChanged: onSearchChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: hint,
                hintStyle: TextStyle(
                    color: hintColor,
                    fontSize: fontSize,
                    fontWeight: hintFontWeight),
              ),
            ),
          ),
          InkWell(
            onTap: onSearchTap,
            child: Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }
}

//NeonAddItemButton
class NeonAddItemButton extends StatelessWidget {
  const NeonAddItemButton({
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

  final String data;
  final IconData? icon;
  final void Function()? onPressed;
  final Color textColor;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final double iconSize;
  final Color iconColor;
  final Color borderColor;
  final Color spreadColor;
  final double borderWidth;
  final double lightSpreadRadius;
  final double lightBlurRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: spreadColor,
                blurRadius: lightBlurRadius, // soften the shadow
                spreadRadius: lightSpreadRadius, //extend the shadow
              ),
            ],
            border: Border.all(color: borderColor, width: borderWidth),
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                data,
                style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 5,
              ),
              icon == null
                  ? Container()
                  : Icon(
                      icon,
                      size: iconSize,
                      color: iconColor,
                    )
            ],
          ),
        ),
      ),
    );
  }
}

//NeonRightMsgCard
class NeonRightMsgCard extends StatelessWidget {
  const NeonRightMsgCard(
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

  final String msg;
  final String time;
  final Color backgroundColor;
  final Color borderColor;
  final Color spreadColor;
  final double borderWidth;
  final double lightSpreadRadius;
  final double lightBlurRadius;
  final double msgFontSize;
  final double timeFontSize;
  final Color textColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 50, right: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: spreadColor,
            blurRadius: lightBlurRadius, // soften the shadow
            spreadRadius: lightSpreadRadius, //extend the shadow
          ),
        ],
        border: Border.all(color: borderColor, width: borderWidth),
        color: backgroundColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
            bottomLeft: Radius.circular(borderRadius),
            bottomRight: Radius.circular(borderRadius)),
      ),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: Text(
                msg,
                style: TextStyle(
                  color: textColor,
                  fontSize: msgFontSize,
                ),
              )),
          Container(
              alignment: Alignment.bottomRight,
              child: Text(
                time,
                style: TextStyle(
                  color: textColor,
                  fontSize: timeFontSize,
                ),
              )),
        ],
      ),
    );
  }
}

//NeonLeftMsgCard
class NeonLeftMsgCard extends StatelessWidget {
  const NeonLeftMsgCard(
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

  final String msg;
  final String time;
  final Color backgroundColor;
  final Color borderColor;
  final Color spreadColor;
  final double borderWidth;
  final double lightSpreadRadius;
  final double lightBlurRadius;
  final double msgFontSize;
  final double timeFontSize;
  final Color textColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 50),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: spreadColor,
            blurRadius: lightBlurRadius, // soften the shadow
            spreadRadius: lightSpreadRadius, //extend the shadow
          ),
        ],
        border: Border.all(color: borderColor, width: borderWidth),
        color: backgroundColor,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(borderRadius),
            bottomLeft: Radius.circular(borderRadius),
            bottomRight: Radius.circular(borderRadius)),
      ),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: Text(
                msg,
                style: TextStyle(
                  color: textColor,
                  fontSize: msgFontSize,
                ),
              )),
          Container(
              alignment: Alignment.bottomRight,
              child: Text(
                time,
                style: TextStyle(
                  color: textColor,
                  fontSize: timeFontSize,
                ),
              )),
        ],
      ),
    );
  }
}

//NeonPoint
class NeonPoint extends StatelessWidget {
  const NeonPoint({
    Key? key,
    this.transform,
    this.transformAlignment = Alignment.center,
    this.spreadColor = Colors.deepPurple,
    this.pointColor = Colors.white,
    this.pointSize = 0.2,
    this.lightBlurRadius = 100,
    this.lightSpreadRadius = 50,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.clip = Clip.antiAlias,
    this.alignment,
  }) : super(key: key);

  final Color spreadColor;
  final Color pointColor;
  final double lightBlurRadius;
  final double lightSpreadRadius;
  final double pointSize;
  final Matrix4? transform;
  final Alignment transformAlignment;
  final EdgeInsets padding, margin;
  final Alignment? alignment;
  final Clip clip;

  @override
  Widget build(BuildContext context) {
    return NeonContainer(
      transform: transform,
      transformAlignment: transformAlignment,
      borderWidth: pointSize,
      spreadColor: spreadColor,
      borderColor: Colors.transparent,
      containerColor: pointColor,
      lightBlurRadius: lightBlurRadius,
      lightSpreadRadius: lightSpreadRadius,
      borderRadius: BorderRadius.circular(1000),
      padding: padding,
      margin: margin,
      clipBehavior: clip,
      alignment: alignment,
      child: const SizedBox(
        width: 0,
        height: 0,
      ),
    );
  }
}

//NeonLine
class NeonLine extends StatelessWidget {
  const NeonLine({
    Key? key,
    this.transform,
    this.transformAlignment = Alignment.center,
    this.spreadColor = Colors.deepPurple,
    this.lineColor = Colors.white,
    this.lineWidth = 0.2,
    this.lineHeight = 20,
    this.lightBlurRadius = 100,
    this.lightSpreadRadius = 50,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.clip = Clip.antiAlias,
    this.alignment,
  }) : super(key: key);

  final Matrix4? transform;
  final Alignment transformAlignment;
  final Color spreadColor;
  final Color lineColor;
  final double lightBlurRadius;
  final double lightSpreadRadius;
  final double lineWidth;
  final double lineHeight;
  final EdgeInsets padding, margin;
  final Alignment? alignment;
  final Clip clip;

  @override
  Widget build(BuildContext context) {
    return NeonContainer(
      transform: transform,
      transformAlignment: transformAlignment,
      borderWidth: lineWidth > lineHeight ? lineHeight : lineWidth,
      spreadColor: spreadColor,
      borderColor: Colors.transparent,
      containerColor: lineColor,
      lightBlurRadius: lightBlurRadius,
      lightSpreadRadius: lightSpreadRadius,
      borderRadius: BorderRadius.circular(1000),
      alignment: alignment,
      margin: margin,
      padding: padding,
      clipBehavior: clip,
      child: Container(
        color: lineColor,
        width: lineWidth > lineHeight ? lineWidth : 0,
        height: lineWidth > lineHeight ? 0 : lineHeight,
      ),
    );
  }
}

class NeonText extends StatelessWidget {
  const NeonText({
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
    this.fontFamily,
    this.wordSpacing,
    this.maxLine,
    this.textHeightBehavior,
    this.letterSpacing,
    this.textWidgetBasis,
  }) : super(key: key);

  final String text;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final double textSize, blurRadius;
  final Color textColor, spreadColor;
  final TextOverflow textOverflow;
  final bool isSoftWrap;
  final TextDirection textDirection;
  final TextWidthBasis textWidthBasis;
  final FontStyle fontStyle;
  final String? fontFamily;
  final double? wordSpacing, letterSpacing;
  final TextWidthBasis? textWidgetBasis;
  final TextHeightBehavior? textHeightBehavior;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: textSize,
        color: textColor,
        shadows: [
          Shadow(color: spreadColor, blurRadius: blurRadius),
        ],
        fontStyle: fontStyle,
        fontFamily: fontFamily,
        wordSpacing: wordSpacing,
        overflow: textOverflow,
        letterSpacing: letterSpacing,
      ),
      maxLines: maxLine,
      overflow: textOverflow,
      softWrap: isSoftWrap,
      textDirection: textDirection,
      textHeightBehavior: textHeightBehavior,
      textWidthBasis: textWidgetBasis,
    );
  }
}

//
//Flicker neon widgets
//

//FlickerNeonContainer
class FlickerNeonContainer extends StatefulWidget {
  const FlickerNeonContainer({
    Key? key,
    required this.child,
    this.transform,
    this.transformAlignment = Alignment.center,
    this.borderColor = Colors.white,
    this.spreadColor = Colors.deepPurple,
    this.containerColor = Colors.black45,
    this.borderRadius = BorderRadius.zero,
    this.clipBehavior = Clip.antiAlias,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.borderWidth = 5,
    this.lightSpreadRadius = 10,
    this.lightBlurRadius = 60,
    this.alignment,
    this.randomFlicker = true,
    this.flickerTimeInMilliSeconds = 3000,
    this.height,
    this.width,
  }) : super(key: key);

  final Widget child;
  final Color borderColor;
  final Color spreadColor;
  final Color containerColor;
  final BorderRadius borderRadius;
  final Clip clipBehavior;
  final EdgeInsets margin, padding;
  final double borderWidth;
  final double lightSpreadRadius;
  final double lightBlurRadius;
  final Alignment? alignment;
  final bool randomFlicker;
  final int flickerTimeInMilliSeconds;
  final Matrix4? transform;
  final Alignment transformAlignment;
  final double? width, height;

  @override
  State<StatefulWidget> createState() => FlickerNeonContainerState();
}

class FlickerNeonContainerState extends State<FlickerNeonContainer>
    with TickerProviderStateMixin {
  late AnimationController controller;
  int randomNumber = Random().nextInt(3000);

  @override
  void initState() {
    super.initState();
    if (widget.flickerTimeInMilliSeconds == 0) {
      controller = AnimationController(vsync: this);
      controller.value = 1;
    } else {
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
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      transformAlignment: widget.transformAlignment,
      transform: widget.transform ?? Matrix4.rotationZ(0),
      margin: widget.margin,
      clipBehavior: widget.clipBehavior,
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
              color:
                  controller.value > 0.5 ? widget.borderColor : Colors.white70,
              width: widget.borderWidth)),
      alignment: widget.alignment,
      height: widget.height,
      width: widget.width,
      child: widget.child,
    );
  }
}

//FlickerNeonPoint

class FlickerNeonPoint extends StatelessWidget {
  const FlickerNeonPoint({
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
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  final Matrix4? transform;
  final Alignment transformAlignment;
  final Color spreadColor;
  final Color pointColor;
  final double lightBlurRadius;
  final double lightSpreadRadius;
  final double pointSize;
  final bool randomFlicker;
  final int flickerTimeInMilliSeconds;
  final EdgeInsets padding, margin;

  @override
  Widget build(BuildContext context) {
    return FlickerNeonContainer(
      transform: transform,
      transformAlignment: transformAlignment,
      borderWidth: pointSize,
      randomFlicker: randomFlicker,
      flickerTimeInMilliSeconds: flickerTimeInMilliSeconds,
      spreadColor: spreadColor,
      borderColor: Colors.transparent,
      containerColor: pointColor,
      lightBlurRadius: lightBlurRadius,
      lightSpreadRadius: lightSpreadRadius,
      borderRadius: BorderRadius.circular(1000),
      margin: margin,
      padding: padding,
      child: const SizedBox(
        width: 0,
        height: 0,
      ),
    );
  }
}

//FlickerNeonLine

class FlickerNeonLine extends StatelessWidget {
  const FlickerNeonLine({
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
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.clip = Clip.antiAlias,
    this.alignment,
  }) : super(key: key);

  final Matrix4? transform;
  final Alignment transformAlignment;
  final Color spreadColor;
  final Color lineColor;
  final double lightBlurRadius;
  final double lightSpreadRadius;
  final double lineWidth;
  final double lineHeight;
  final bool randomFlicker;
  final int flickerTimeInMilliSeconds;
  final EdgeInsets padding, margin;
  final Alignment? alignment;
  final Clip clip;

  @override
  Widget build(BuildContext context) {
    return FlickerNeonContainer(
      transform: transform,
      transformAlignment: transformAlignment,
      borderWidth: lineWidth > lineHeight ? lineHeight : lineWidth,
      randomFlicker: randomFlicker,
      flickerTimeInMilliSeconds: flickerTimeInMilliSeconds,
      spreadColor: spreadColor,
      borderColor: Colors.transparent,
      containerColor: lineColor,
      lightBlurRadius: lightBlurRadius,
      lightSpreadRadius: lightSpreadRadius,
      borderRadius: BorderRadius.circular(1000),
      alignment: alignment,
      margin: margin,
      padding: padding,
      clipBehavior: clip,
      child: Container(
        color: lineColor,
        width: lineWidth > lineHeight ? lineWidth : 0,
        height: lineWidth > lineHeight ? 0 : lineHeight,
      ),
    );
  }
}

class FlickerNeonText extends StatefulWidget {
  const FlickerNeonText({
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
    this.fontFamily,
    this.wordSpacing,
    this.maxLine,
    this.textHeightBehavior,
    this.letterSpacing,
    this.textWidgetBasis,
  }) : super(key: key);

  final String text;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final double textSize, blurRadius;
  final Color textColor, spreadColor;
  final TextOverflow textOverflow;
  final bool isSoftWrap;
  final TextDirection textDirection;
  final TextWidthBasis textWidthBasis;
  final FontStyle fontStyle;
  final String? fontFamily;
  final double? wordSpacing, letterSpacing;
  final TextWidthBasis? textWidgetBasis;
  final TextHeightBehavior? textHeightBehavior;
  final int? maxLine;
  final bool randomFlicker;
  final int flickerTimeInMilliSeconds;

  @override
  State<StatefulWidget> createState() => FlickerNeonTextState();
}

class FlickerNeonTextState extends State<FlickerNeonText>
    with TickerProviderStateMixin {
  late AnimationController controller;
  int randomNumber = Random().nextInt(3000);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.flickerTimeInMilliSeconds == 0) {
      controller = AnimationController(vsync: this);
      controller.value = 1;
    } else {
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
