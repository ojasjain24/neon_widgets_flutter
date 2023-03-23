import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

//oAppBar
AppBar neonAppBar({
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

//CircumscribingIconButton
class CircumscribingIconButton extends StatefulWidget {
  const CircumscribingIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.iconColor = Colors.white,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  final IconData icon;
  final void Function()? onTap;
  final Color iconColor;
  final Color backgroundColor;

  @override
  State<StatefulWidget> createState() {
    return CircumscribingIconButtonState();
  }
}

class CircumscribingIconButtonState extends State<CircumscribingIconButton> {
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

//SearchBar
class SearchBar extends StatefulWidget {
  const SearchBar({
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
  final double hintFontSize;

  @override
  State<StatefulWidget> createState() {
    return SearchBarState();
  }
}

class SearchBarState extends State<SearchBar> {
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

//AddItemButton
class AddItemButton extends StatefulWidget {
  const AddItemButton({
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

  final String data;
  final IconData icon;
  final void Function()? onPressed;
  final Color textColor;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final double iconSize;
  final Color iconColor;

  @override
  State<StatefulWidget> createState() {
    return AddItemButtonState();
  }
}

class AddItemButtonState extends State<AddItemButton> {
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

//RightMsgCard
class RightMsgCard extends StatefulWidget {
  const RightMsgCard(
      {Key? key,
      this.msg = "",
      this.time = "",
      this.backgroundColor = Colors.grey,
      this.msgFontSize = 15,
      this.timeFontSize = 10,
      this.textColor = Colors.black,
      this.borderRadius = 10})
      : super(key: key);

  final String msg;
  final String time;
  final Color backgroundColor;
  final double msgFontSize;
  final double timeFontSize;
  final Color textColor;
  final double borderRadius;

  @override
  State<StatefulWidget> createState() {
    return RightMsgCardState();
  }
}

class RightMsgCardState extends State<RightMsgCard> {
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

//LeftMsgCard
class LeftMsgCard extends StatefulWidget {
  const LeftMsgCard(
      {Key? key,
      this.msg = "",
      this.time = "",
      this.backgroundColor = Colors.grey,
      this.msgFontSize = 15,
      this.timeFontSize = 10,
      this.textColor = Colors.black,
      this.borderRadius = 10})
      : super(key: key);

  final String msg;
  final String time;
  final Color backgroundColor;
  final double msgFontSize;
  final double timeFontSize;
  final Color textColor;
  final double borderRadius;

  @override
  State<StatefulWidget> createState() {
    return LeftMsgCardState();
  }
}

class LeftMsgCardState extends State<LeftMsgCard> {
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

// Random Flicker
class Flicker extends StatefulWidget {
  const Flicker({
    Key? key,
    required this.child,
    this.randomFlicker = true,
    this.flickerTimeInMilliSeconds = 3000,
    this.curve = Curves.easeInExpo,
  }) : super(key: key);

  final Widget child;
  final bool randomFlicker;
  final Curve curve;
  final int flickerTimeInMilliSeconds;

  @override
  State<StatefulWidget> createState() {
    return FlickerState();
  }
}

class FlickerState extends State<Flicker> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> curve;
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
    curve = CurvedAnimation(
        parent: controller, curve: widget.curve, reverseCurve: Curves.bounceIn);

    controller.addStatusListener((status) {
      randomNumber = Random().nextInt(3000);
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
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: curve, child: widget.child);
  }
}
