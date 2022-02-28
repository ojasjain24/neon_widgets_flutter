# Neon Widgets
Most commonly used flutter widgets in neon version. 

[![License](https://img.shields.io/github/license/ojasjain24/neon_widgets_flutter?color=dark%20green)](https://github.com/ojasjain24/neon_widgets_flutter/blob/master/LICENSE)
[![Pub](https://img.shields.io/badge/Pub-v0.0.2-blue)](https://pub.dev/packages/neon_widgets)
[![GitHub stars](https://img.shields.io/github/stars/ojasjain24/neon_widgets_flutter?color=green&style=social)](https://github.com/ojasjain24/neon_widgets_flutter)

## Getting started

Readme Changelog Installing Versions Scores Admin Activity log Use this package as a library Depend
on it Run this command:


Run this command:

With Dart:
```
 $ dart pub add neon_widgets
```

With Flutter:
```
 $ flutter pub add neon_widgets
```

This will add a line like this to your package's pubspec.yaml (and run an implicit dart pub get):

```
dependencies:
  neon_widgets: ^0.0.2
```

Alternatively, your editor might support dart pub get or flutter pub get. Check the docs for your editor to learn more.

Import it
Now in your Dart code, you can use:

```
import 'package:neon_widgets/neon_widgets.dart';
```
## Features

### ExampleApp
Neon Widgets
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/neonWidgets.gif" height="516" width="360">
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/Screenshot%202022-02-21%20110732.png" >

Flickering Neon Widgets
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/flickerWidgetsDemo.gif" height="528" width="320">


### Widgets
neonSearchBar :
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/Screenshot%202022-02-21%20110254.png"  >

```
oNeonSearchBar()
```
Chat widgets :
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/Screenshot%202022-02-21%20110417.png" >

```
oNeonRightMsgCard(
    lightBlurRadius: 20,
    lightSpreadRadius: 10,
    backgroundColor: Colors.deepPurple,
    msg:
    "Hi all, this is brand new library that provides most used widgets in neon and normal effect",
    time: "10:45"),
const SizedBox(
  height: 20,
),
oLeftMsgCard(
    msg:
    "Hi all, this is brand new library that provides most used widgets in neon and normal effect",
    time: "10:45"),
const SizedBox(
  height: 20,
),
oRightMsgCard(
    msg:
    "Hi all, this is brand new library that provides most used widgets in neon and normal effect",
    time: "10:45"),
const SizedBox(
  height: 20,
),
```
Add items widget :
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/Screenshot%202022-02-21%20110455.png" >

```
Wrap(
direction: Axis.horizontal,
children: <Widget>[
  ...(searchedResults.map((e) =>
      oNeonAddItemButton(
          data: e,
          borderColor: Colors.deepOrange.shade50,
          spreadColor: Colors.deepOrange,
          lightSpreadRadius: 3,
          lightBlurRadius: 18))),
],
),
```

oNeonPoint widget :
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/Screenshot%202022-02-21%20190238.png" >

```
oNeonPoint(
  pointSize: 00,
  pointColor: Colors.red.shade100,
  spreadColor: Colors.red,
),
```
oNeonLine widget :
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/Screenshot%202022-02-21%20190619.png" >
```
oNeonLine(
  spreadColor: Colors.brown,
  lightSpreadRadius: 30,
  lightBlurRadius: 90,
  lineWidth: 400,
  lineHeight: 0.02,
  lineColor: Colors.brown.shade100,
),
```

Flickering Neon widgets :
```
// Flickering neon line
oFlickerNeonLine(
  spreadColor: Colors.brown,
  lightSpreadRadius: 30,
  lightBlurRadius: 60,
  lineWidth: 300,
  lineHeight: 2,
  lineColor: Colors.brown.shade100,
),
```

```
// Flickering neon point
oFlickerNeonPoint(
  pointSize: 010,
  pointColor: Colors.blue.shade100,
  spreadColor: Colors.blue,
),
```

```
// Flickering neon container
oFlickerNeonContainer(
    spreadColor: Colors.green.shade700,
    child: WIDGET
),
```

Non Neon widgets :
<img src="https://github.com/ojasjain24/neon_widgets_flutter/blob/master/demos/Screenshot%202022-02-21%20110545.png" >
```
oSearchBar(),
const SizedBox(
  height: 20,
),
Wrap(
  direction: Axis.horizontal,
  children: <Widget>[
    ...(searchedResults
        .map((e) => oAddItemButton(data: e))),
  ],
),
const SizedBox(
  height: 20,
),
Container(
  padding: const EdgeInsets.all(20),
  child: oCircumscribingIconButton(
      icon: Icons.keyboard_arrow_left_sharp,
      onTap: () {},
      backgroundColor: Colors.purple),
),
```

## Usage

Example code provided

```
oNeonContainer(
  spreadColor: Colors.green.shade700,
  child: oCircumscribingIconButton(
        icon: Icons.arrow_right_alt_sharp,
        onTap: () {},
        backgroundColor: Colors.green.shade700),
    borderRadius: BorderRadius.circular(100),
    lightBlurRadius: 100,
    lightSpreadRadius: 50,
  borderColor: Colors.green.shade100
)
```

## Additional information

Wanna improve this package? Contribute to project on
github : https://github.com/ojasjain24/neon_widgets_flutter
create issue : https://github.com/ojasjain24/neon_widgets_flutter/issues

## Contributing rules : 
1 : create an issue describing the feature.

2 : comment on this issue that you are interested in resolving this issue.

