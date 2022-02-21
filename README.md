<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->
# Neon_Widgets

[![License](https://img.shields.io/github/license/mashape/apistatus.svg?maxAge=2592000)](https://github.com/ojasjain24/flutter_widgets/blob/master/LICENSE)

This package will provide you with most commonly used widgets with their normal and neon version.

## Getting started

Readme Changelog Installing Versions Scores Admin Activity log Use this package as a library Depend
on it Run this command:

With Flutter:

```
$ flutter pub add o_widget_pacckage
```

This will add a line like this to your package's pubspec.yaml (and run an implicit flutter pub get):

dependencies:

```
o_widget_pacckage: ^0.0.4
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn
more.

Import it Now in your Dart code, you can use:

```
import 'package:o_widget_pacckage/o_widget_pacckage.dart';
```


## Features
### ExampleApp
<img src="https://github.com/ojasjain24/flutter_widgets/blob/readme-1/oWidgetsDemo.gif" height="520" width="300">
<img src="https://github.com/ojasjain24/o_widget_package/blob/master/demos/Screenshot%202022-02-21%20110732.png" >

### Widgets
neonSearchBar :
<img src="https://github.com/ojasjain24/o_widget_package/blob/master/demos/Screenshot%202022-02-21%20110254.png"  >

```
oNeonSearchBar()
```
Chat widgets :
<img src="https://github.com/ojasjain24/o_widget_package/blob/master/demos/Screenshot%202022-02-21%20110417.png" >

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
<img src="https://github.com/ojasjain24/o_widget_package/blob/master/demos/Screenshot%202022-02-21%20110455.png" >
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
const SizedBox(
height: 20,
),
Wrap(
direction: Axis.horizontal,
children: <Widget>[
  ...(searchedResults.map((e) =>
      oNeonAddItemButton(
          data: e,
          borderColor: Colors.pink.shade50,
          spreadColor: Colors.pinkAccent,
          lightSpreadRadius: 3,
          lightBlurRadius: 18))),
],
),
const SizedBox(
height: 20,
),
Wrap(
direction: Axis.horizontal,
children: <Widget>[
  ...(searchedResults.map((e) =>
      oNeonAddItemButton(
          data: e,
          borderColor: Colors.blue.shade50,
          spreadColor: Colors.blue,
          lightSpreadRadius: 3,
          lightBlurRadius: 18))),
],
),
```
Non Neon widgets :
<img src="https://github.com/ojasjain24/o_widget_package/blob/master/demos/Screenshot%202022-02-21%20110545.png" >
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
github : https://github.com/ojasjain24/o_widget_package
create issue : https://github.com/ojasjain24/o_widget_package/issues

