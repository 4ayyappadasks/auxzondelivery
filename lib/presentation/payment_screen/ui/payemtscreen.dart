import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../common/color/color.dart';
import '../../../common/textfont/textfont.dart';
import '../../../main.dart';

class PayemtscreenWrapper extends StatelessWidget {
  const PayemtscreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Payemtscreen();
  }
}

class Payemtscreen extends StatelessWidget {
  const Payemtscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              print("Current Tab Index (Slide): ${tabController.index}");
            } else {
              print("Current Tab Index (Tap): ${tabController.index}");
            }
          });

          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              TabBar(
                labelColor: Colorsdata.black,
                unselectedLabelColor: Colorsdata.unfocus,
                indicatorColor: Colorsdata.darkcolor,
                tabs: const [
                  Tab(
                    text: "Daily",
                  ),
                  Tab(
                    text: "Weekly",
                  ),
                  Tab(
                    text: "Monthly",
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TabBarView(
                    children: [
                      ///
                      Center(
                          child: Column(
                        children: [
                          SizedBox(
                            height: MyApp.height * .01,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              width: MyApp.width,
                              height: MyApp.height * .15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colorsdata.unfocus
                                ),
                                color: Colorsdata.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      TextThemedel(
                                          text: "Weakly Performance",
                                          color: Colorsdata.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                      Spacer(),
                                      TextThemedel(
                                          text: "See trip",
                                          fontSize: 15,
                                          color: Colorsdata.black),
                                      Icon(Icons.arrow_right,
                                          color: Colorsdata.black)
                                    ],
                                  ),
                                  Spacer(),
                                  Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colorsdata.maincolor),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                  topLeft: Radius.circular(5),
                                                ),
                                                color: Colorsdata.maincolor),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Trips",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                              border: Border.symmetric(
                                                  horizontal: BorderSide(
                                                      color: Colorsdata.maincolor)),
                                              color: Colorsdata.maincolor,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Login hours",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                              color: Colorsdata.maincolor,
                                              border: Border.all(
                                                  color: Colorsdata.maincolor),
                                              borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Touch-points",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: MyApp.width,
                              height: MyApp.height,
                              decoration: BoxDecoration(
                                color: Colorsdata.white,
                              ),
                              child: ListView.builder(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                itemCount: 9,
                                itemBuilder: (context, index) => Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: MyApp.height * .005),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colorsdata.liteunfocus,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colorsdata.unfocus)),
                                    ),
                                    child: ListTile(
                                      title: Row(
                                        children: [
                                          Icon(
                                            index.isEven
                                                ? Icons.arrow_downward
                                                : Icons.arrow_upward,
                                            color: index.isEven
                                                ? Colorsdata.error
                                                : Colorsdata.maincolor,
                                          ),
                                          SizedBox(width: 10),
                                          TextThemedel(
                                            text: index.isEven
                                                ? "- Rs.200"
                                                : "+ Rs.300",
                                            color: index.isEven
                                                ? Colorsdata.error
                                                : Colorsdata.maincolor,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ],
                                      ),
                                      subtitle: Text("Date: 22/05/2024"),
                                      trailing: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          TextThemedel(text: "9:55 pm"),
                                          TextThemedel(
                                              text:
                                                  "Order ID: #2200113${index + 1}"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),

                      ///
                      Center(
                          child: Column(
                        children: [
                          SizedBox(
                            height: MyApp.height * .01,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              width: MyApp.width,
                              height: MyApp.height * .15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colorsdata.unfocus
                                ),
                                color: Colorsdata.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      TextThemedel(
                                          text: "Weakly Performance",
                                          color: Colorsdata.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                      Spacer(),
                                      TextThemedel(
                                          text: "See trip",
                                          fontSize: 15,
                                          color: Colorsdata.black),
                                      Icon(Icons.arrow_right,
                                          color: Colorsdata.black)
                                    ],
                                  ),
                                  Spacer(),
                                  Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                              color: Colorsdata.maincolor,
                                              border: Border.all(
                                                  color: Colorsdata.maincolor),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(5),
                                                topLeft: Radius.circular(5),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Trips",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                                color: Colorsdata.maincolor,
                                              border: Border.symmetric(
                                                  horizontal: BorderSide(
                                                      color: Colorsdata.maincolor)),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Login hours",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                                color: Colorsdata.maincolor,
                                              border: Border.all(
                                                  color: Colorsdata.maincolor),
                                              borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Touch-points",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: MyApp.width,
                              height: MyApp.height,
                              decoration: BoxDecoration(
                                color: Colorsdata.white,
                              ),
                              child: Center(
                                child: Material(
                                  color: Colorsdata.white,
                                  elevation: 10,
                                  child: ListView.builder(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    itemCount: 7,
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: MyApp.height * .005),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colorsdata.liteunfocus,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colorsdata.unfocus)),
                                        ),
                                        child: ListTile(
                                          title: TextThemedel(
                                            text: "Day ${index + 1}",
                                            color: Colorsdata.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          subtitle: TextThemedel(
                                            text: index.isEven
                                                ? "Income: Rs. 1000 | Outcome: Rs. 700"
                                                : "Income: Rs. 800 | Outcome: Rs. 600",
                                            color: Colorsdata.darkunfocus,
                                          ),
                                          trailing: TextThemedel(
                                            text:
                                                "Net: Rs. ${index.isEven ? 300 : 200}",
                                            color: Colorsdata.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),

                      ///
                      Center(
                          child: Column(
                        children: [
                          SizedBox(
                            height: MyApp.height * .01,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              width: MyApp.width,
                              height: MyApp.height * .15,
                              decoration: BoxDecoration(
                                color: Colorsdata.white,
                                border: Border.all(
                                    color: Colorsdata.unfocus
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      TextThemedel(
                                          text: "Monthly Performance",
                                          color: Colorsdata.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                      Spacer(),
                                      TextThemedel(
                                          text: "See trip",
                                          fontSize: 15,
                                          color: Colorsdata.black),
                                      Icon(Icons.arrow_right,
                                          color: Colorsdata.black)
                                    ],
                                  ),
                                  Spacer(),
                                  Material(
                                    elevation: 10,
                                    borderRadius: BorderRadius.circular(10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                              color: Colorsdata.maincolor,
                                              border: Border.all(
                                                  color: Colorsdata.maincolor),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(5),
                                                topLeft: Radius.circular(5),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Trips",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                              color: Colorsdata.maincolor,
                                              border: Border.symmetric(
                                                  horizontal: BorderSide(
                                                      color: Colorsdata.maincolor)),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Login hours",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            decoration: BoxDecoration(
                                              color: Colorsdata.maincolor,
                                              border: Border.all(
                                                  color: Colorsdata.maincolor),
                                              borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextThemedel(
                                                  text: "00",
                                                  color: Colorsdata.white,
                                                ),
                                                TextThemedel(
                                                  text: "Touch-points",
                                                  color: Colorsdata.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: MyApp.width,
                              height: MyApp.height,
                              decoration: BoxDecoration(
                                color: Colorsdata.white,
                              ),
                              child: Center(
                                child: Material(
                                  color: Colorsdata.white,
                                  elevation: 10,
                                  child: ListView.builder(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    itemCount: 4,
                                    // Assume 4 weeks in a month
                                    itemBuilder: (context, index) => Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: MyApp.height * .005),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colorsdata.liteunfocus,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colorsdata.unfocus)),
                                        ),
                                        child: ListTile(
                                          title: TextThemedel(
                                            text: "Week ${index + 1}",
                                            color: Colorsdata.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          subtitle: TextThemedel(
                                            text:
                                                "Income: Rs. ${3000 + index * 500} | Outcome: Rs. ${2000 + index * 400}",
                                            color: Colorsdata.darkunfocus,
                                          ),
                                          trailing: TextThemedel(
                                            text:
                                                "Net: Rs. ${1000 + index * 100}",
                                            color: Colorsdata.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
