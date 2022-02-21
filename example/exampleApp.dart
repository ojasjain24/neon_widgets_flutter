import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class exampleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return exampleAppState();
  }
}

class exampleAppState extends State<exampleApp> {
  @override
  Widget build(BuildContext context) {
    List<String> searchedResults = [
      "Flutter",
      "PubDev",
      "Package",
      "Library",
      "Widgets",
      "New"
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: oAppBar(
          context: context,
          heading: "Example App",
          iconColor: Colors.white,
          backgroundColor: Colors.deepPurple.shade600,
          onTap: () {},
          appBarShadowColor: Colors.purple),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  oNeonSearchBar(hint: "Search here..."),
                  const SizedBox(
                    height: 20,
                  ),
                  oNeonContainer(
                      spreadColor: Colors.teal.shade200,
                      borderColor: Colors.teal.shade50,
                      containerColor: Colors.black,
                      lightBlurRadius: 20,
                      lightSpreadRadius: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            oNeonLeftMsgCard(
                                lightBlurRadius: 10,
                                lightSpreadRadius: 5,
                                msg:
                                    "Hi all, this is brand new library that provides most used widgets in neon and normal effect",
                                time: "10:45"),
                            const SizedBox(
                              height: 20,
                            ),
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
                            const SizedBox(
                              height: 20,
                            ),
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
                            const SizedBox(
                              height: 100,
                            ),
                            oNeonPoint(
                              pointSize: 00,
                              pointColor: Colors.red.shade100,
                              spreadColor: Colors.red,
                            ),
                            const SizedBox(
                              height: 86.6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                oNeonPoint(
                                  pointSize: 00,
                                  pointColor: Colors.blue.shade100,
                                  spreadColor: Colors.blue,
                                ),
                                const SizedBox(
                                  width: 100,
                                ),
                                oNeonPoint(
                                  pointSize: 00,
                                  pointColor: Colors.green.shade100,
                                  spreadColor: Colors.green,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 400,
                            ),
                            oNeonLine(
                              spreadColor: Colors.brown,
                              lightSpreadRadius: 30,
                              lightBlurRadius: 90,
                              lineWidth: 400,
                              lineHeight: 0.02,
                              lineColor: Colors.brown.shade100,
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            child: oNeonContainer(
                spreadColor: Colors.green.shade700,
                child: oCircumscribingIconButton(
                    icon: Icons.arrow_right_alt_sharp,
                    onTap: () {},
                    backgroundColor: Colors.green.shade700),
                borderRadius: BorderRadius.circular(100),
                lightBlurRadius: 100,
                lightSpreadRadius: 50,
                borderColor: Colors.green.shade100),
          ),
        ],
      ),
    );
  }
}
