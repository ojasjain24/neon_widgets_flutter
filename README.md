<p align="center">
<img src = "https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/neon_widgets_logo.png" height = "300" width ="300"/>
</p>

<h1 align="center"> Neon Widgets💡 </h1>
 <h3 align="center"> Most commonly used flutter widgets in neon version.</h3>

[![License](https://img.shields.io/github/license/ojasjain24/neon_widgets_flutter?color=dark%20green)](https://github.com/ojasjain24/neon_widgets_flutter/blob/master/LICENSE)
[![Pub](https://img.shields.io/pub/v/neon_widgets?color=blue)](https://pub.dev/packages/neon_widgets)
[![GitHub stars](https://img.shields.io/github/stars/ojasjain24/neon_widgets_flutter?color=green&style=social)](https://github.com/ojasjain24/neon_widgets_flutter)

## Live Example : https://ojas-jain.web.app/#/

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
  neon_widgets: ^0.1.2
```

Alternatively, your editor might support dart pub get or flutter pub get. Check the docs for your
editor to learn more.

Import it Now in your Dart code, you can use:

```
import 'package:neon_widgets/neon_widgets.dart';
```

## Features

### ExampleApp

Neon Widgets :

<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/neonWidgets.gif" height="516" width="360">
<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/Screenshot%202022-02-21%20110732.png" height="580" width="360" >

Flickering Neon Widgets
(with random flicker rate) :

<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/flickerWidgetsDemo.gif" height="594" width="360">

Loaders :

 <img src = "https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/loaders.gif" />

### Widgets

neonText :

<img src = "https://user-images.githubusercontent.com/59116312/159339246-fda62119-75c2-4d5d-8f44-6c8f85db9800.gif"/>

```
// neon text

 NeonText(
   text: "Neon text",
   spreadColor: Colors.pink,
   blurRadius: 20,
   textSize: 74,
   textColor: Colors.white,
 ),

// flickering neon text

 FlickerNeonText(
   text: "Flicker neon text",
   flickerTimeInMilliSeconds: 600,
   spreadColor: Colors.blue,
   blurRadius: 20,
   textSize: 74,
 ),
```

neonSearchBar :

<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/Screenshot%202022-02-21%20110254.png"  >

```
NeonSearchBar()
```

Chat widgets :

<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/Screenshot%202022-02-21%20110417.png" >

```
// Left message card in neon theme
NeonLeftMsgCard(
  lightBlurRadius: 20,
  lightSpreadRadius: 5,
  msg:
      "Hi all, this is brand new library that provides most used widgets in neon and normal effect",
  time: "10:45",
),

const SizedBox(
  height: 20,
),

// Right message card in neon theme
NeonRightMsgCard(
    lightBlurRadius: 20,
    lightSpreadRadius: 10,
    backgroundColor: Colors.deepPurple,
    msg:
    "Hi all, this is brand new library that provides most used widgets in neon and normal effect",
    time: "10:45",
 ),

const SizedBox(
  height: 20,
),

// Left massage card

LeftMsgCard(
    msg:
    "Hi all, this is brand new library that provides most used widgets in neon and normal effect",
    time: "10:45",
),

const SizedBox(
  height: 20,
),

// Right massage card

RightMsgCard(
    msg:
    "Hi all, this is brand new library that provides most used widgets in neon and normal effect",
    time: "10:45",
),

const SizedBox(
  height: 20,
),

```

Add items widget :

<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/Screenshot%202022-02-21%20110455.png" >

```
Wrap(
direction: Axis.horizontal,
children: <Widget>[
  ...(searchedResults.map((e) =>
      NeonAddItemButton(
          data: e,
          borderColor: Colors.deepOrange.shade50,
          spreadColor: Colors.deepOrange,
          lightSpreadRadius: 3,
          lightBlurRadius: 18))),
],
),
```

NeonPoint widget :

<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/Screenshot%202022-02-21%20190238.png" >

```
NeonPoint(
  pointSize: 00,
  pointColor: Colors.red.shade100,
  spreadColor: Colors.red,
),
```

NeonLine widget :

<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/Screenshot%202022-02-21%20190619.png" >

```
NeonLine(
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
FlickerNeonLine(
  spreadColor: Colors.brown,
  lightSpreadRadius: 30,
  lightBlurRadius: 60,
  lineWidth: 300,
  lineHeight: 2,
  lineColor: Colors.brown.shade100,

  // flicker rate which is selects a random value by default
  randomFlicker: false,
  flickerTimeInMilliSeconds: 1000,
),
```

```
// Flickering neon point
FlickerNeonPoint(
  pointSize: 010,
  pointColor: Colors.blue.shade100,
  spreadColor: Colors.blue,
),
```

```
// Flickering neon container
FlickerNeonContainer(
    spreadColor: Colors.green.shade700,
    child: WIDGET
),
```

Loaders :

```
 //loader type 1 : loader made of polynomial of n number of side
 oNeonShapeVerticesProgressBar(number: 4)

 //loader type 2 : triangle shape with all colors customizable
 NeonTriangleVerticesProgressBar()

 //loader type 3 : square shape with all colors customizable
 NeonSquareVerticesProgressBar()

 //loader type 4 : image
 ImageProgressBar(image : "assets/images/abc.png")

```

Non Neon widgets :

<img src="https://raw.githubusercontent.com/ojasjain24/neon_widgets_flutter/master/demos/Screenshot%202022-02-21%20110545.png" >

```
SearchBar(),
const SizedBox(
  height: 20,
),
Wrap(
  direction: Axis.horizontal,
  children: <Widget>[
    ...(searchedResults
        .map((e) => AddItemButton(data: e))),
  ],
),
const SizedBox(
  height: 20,
),
Container(
  padding: const EdgeInsets.all(20),
  child: CircumscribingIconButton(
      icon: Icons.keyboard_arrow_left_sharp,
      onTap: () {},
      backgroundColor: Colors.purple),
),
```

## Usage

Example code provided

```
NeonContainer(
  spreadColor: Colors.green.shade700,
  child: CircumscribingIconButton(
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

