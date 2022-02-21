import 'package:flutter/material.dart';

//oAppBar
AppBar oAppBar({
  required context,
  required String heading,
  IconData icon = Icons.arrow_back,
  Color iconColor = Colors.black87,
  void Function()? onTap,
  Color backgroundColor = Colors.transparent,
  Color appBarShadowColor = Colors.transparent,
  double elevation = 0,
  Color headingColor = Colors.white,
  FontWeight headingFontWeight = FontWeight.bold,
}) {
  return AppBar(
    leading: IconButton(
      icon: Icon(
        icon,
        color: iconColor,
      ),
      onPressed: onTap ?? () => Navigator.of(context).pop(),
    ),
    elevation: elevation,
    shadowColor: appBarShadowColor,
    title: Text(
      heading,
      style: TextStyle(
        color: headingColor,
        fontSize: 20,
        fontWeight: headingFontWeight,
      ),
    ),
    centerTitle: true,
    backgroundColor: backgroundColor,
  );
}

//oCircumscribingIconButton
class oCircumscribingIconButton extends StatefulWidget {
  oCircumscribingIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  IconData icon;
  void Function()? onTap;
  Color iconColor;
  Color backgroundColor;

  @override
  State<StatefulWidget> createState() {
    return oCircumscribingIconButtonState();
  }
}

class oCircumscribingIconButtonState extends State<oCircumscribingIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(1000)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                border: Border.all(color: widget.iconColor, width: 3)),
            child: IconButton(
              onPressed: widget.onTap,
              icon: Icon(widget.icon, size: 20, color: widget.iconColor),
            ),
          ),
        ));
  }
}

//oSearchBar
class oSearchBar extends StatefulWidget {
  oSearchBar({
    Key? key,
    this.hint = "Search",
    this.icon = Icons.search,
    this.onSearchChanged,
    this.onSearchTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.backgroundColor = Colors.white,
    this.hintColor = Colors.black38,
    this.iconColor = Colors.black38,
    this.iconSize = 20,
    this.hintFontSize = 15,
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
  double hintFontSize;

  @override
  State<StatefulWidget> createState() {
    return oSearchBarState();
  }
}

class oSearchBarState extends State<oSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: TextField(
              onChanged: widget.onSearchChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: widget.hint,
                hintStyle: TextStyle(
                    color: widget.hintColor, fontSize: widget.hintFontSize),
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

//oAddItemButton
class oAddItemButton extends StatefulWidget {
  oAddItemButton({
    Key? key,
    this.data = "",
    this.icon = Icons.add,
    this.onPressed,
    this.textColor = Colors.black87,
    this.margin = const EdgeInsets.all(5),
    this.padding = const EdgeInsets.all(10),
    this.backgroundColor = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.iconSize = 14,
    this.iconColor = Colors.green,
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

  @override
  State<StatefulWidget> createState() {
    return oAddItemButtonState();
  }
}

class oAddItemButtonState extends State<oAddItemButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          padding: widget.padding,
          decoration: BoxDecoration(
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

//oRightMsgCard
class oRightMsgCard extends StatefulWidget {
  oRightMsgCard(
      {Key? key,
      this.msg = "",
      this.time = "",
      this.backgroundColor = Colors.grey,
      this.msgFontSize = 15,
      this.timeFontSize = 10,
      this.textColor = Colors.black,
      this.borderRadius = 10})
      : super(key: key);

  String msg;
  String time;
  Color backgroundColor;
  double msgFontSize;
  double timeFontSize;
  Color textColor;
  double borderRadius;

  @override
  State<StatefulWidget> createState() {
    return oRightMsgCardState();
  }
}

class oRightMsgCardState extends State<oRightMsgCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 50, right: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
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

//oLeftMsgCard
class oLeftMsgCard extends StatefulWidget {
  oLeftMsgCard(
      {Key? key,
      this.msg = "",
      this.time = "",
      this.backgroundColor = Colors.grey,
      this.msgFontSize = 15,
      this.timeFontSize = 10,
      this.textColor = Colors.black,
      this.borderRadius = 10})
      : super(key: key);

  String msg;
  String time;
  Color backgroundColor;
  double msgFontSize;
  double timeFontSize;
  Color textColor;
  double borderRadius;

  @override
  State<StatefulWidget> createState() {
    return oLeftMsgCardState();
  }
}

class oLeftMsgCardState extends State<oLeftMsgCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 50),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
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
