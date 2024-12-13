import 'package:flutter/material.dart';

import '../../../../common/color/color.dart';
import '../../../../common/textfont/textfont.dart';
import '../../../../main.dart';

class Performancecard extends StatelessWidget {
  final String title;

  final int trips;

  final int loginhr;

  final int touchpoints;

  const Performancecard({
    super.key,
    required this.title,
    required this.trips,
    required this.loginhr,
    required this.touchpoints,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: MyApp.width,
        height: MyApp.height * .15,
        decoration: BoxDecoration(
          border: Border.all(color: Colorsdata.unfocus),
          color: Colorsdata.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextThemedel(
                    text: title,
                    color: Colorsdata.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
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
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colorsdata.maincolor),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          ),
                          color: Colorsdata.maincolor),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextThemedel(
                            text: "$trips",
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
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal:
                                BorderSide(color: Colorsdata.maincolor)),
                        color: Colorsdata.maincolor,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextThemedel(
                            text: "$loginhr",
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
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colorsdata.maincolor,
                        border: Border.all(color: Colorsdata.maincolor),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextThemedel(
                            text: "$touchpoints",
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
    );
  }
}
