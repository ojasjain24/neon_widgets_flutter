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
    this.alignment = Alignment.center,
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

  @override
  State<StatefulWidget> createState() {
    return oNeonContainerState();
  }
}

class oNeonContainerState extends State<oNeonContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: widget.margin,
        clipBehavior: widget.clipBehaviour,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: widget.spreadColor,
            blurRadius: widget.lightBlurRadius, // soften the shadow
            spreadRadius: widget.lightSpreadRadius, //extend the shadow
          ),
        ], color: widget.containerColor, borderRadius: widget.borderRadius),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: widget.borderRadius,
              border: Border.all(
                  color: widget.borderColor, width: widget.borderWidth)),
          child: widget.child,
        ));
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
    this.icon = Icons.add,
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
  IconData icon;
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
              Icon(
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
    this.spreadColor = Colors.deepPurple,
    this.pointColor = Colors.white,
    this.pointSize = 0.2,
    this.lightBlurRadius = 100,
    this.lightSpreadRadius = 50,
  });

  Color spreadColor;
  Color pointColor;
  double lightBlurRadius;
  double lightSpreadRadius;
  double pointSize;

  @override
  State<StatefulWidget> createState() {
    return oNeonPointState();
  }
}

class oNeonPointState extends State<oNeonPoint> {
  @override
  Widget build(BuildContext context) {
    return oNeonContainer(
        spreadColor: widget.spreadColor,
        borderColor: Colors.transparent,
        containerColor: widget.pointColor,
        lightBlurRadius: widget.lightBlurRadius,
        lightSpreadRadius: widget.lightSpreadRadius,
        borderRadius: BorderRadius.circular(1000),
        child: SizedBox(
          width: widget.pointSize,
          height: widget.pointSize,
        ));
  }
}

//oNeonLine
class oNeonLine extends StatefulWidget {
  oNeonLine({
    this.spreadColor = Colors.deepPurple,
    this.pointColor = Colors.white,
    this.lineWidth = 0.2,
    this.lineHeight = 20,
    this.lightBlurRadius = 100,
    this.lightSpreadRadius = 50,
  });

  Color spreadColor;
  Color pointColor;
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
        spreadColor: widget.spreadColor,
        borderColor: Colors.transparent,
        containerColor: widget.pointColor,
        lightBlurRadius: widget.lightBlurRadius,
        lightSpreadRadius: widget.lightSpreadRadius,
        borderRadius: BorderRadius.circular(1000),
        child: Container(
          color: widget.pointColor,
          width: widget.lineWidth,
          height: widget.lineHeight,
        ));
  }
}
