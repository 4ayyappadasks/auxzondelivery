import 'package:flutter/material.dart';

import '../../../../../common/color/color.dart';
import '../../../../../common/textfont/textfont.dart';
import '../../../../../main.dart';

class Userdetailscard extends StatelessWidget {
  final String day;

  final String year;

  final String month;

  final String date;

  final String earanings;

  final String trip;

  final String hrs;

  const Userdetailscard({
    super.key,
    required this.day,
    required this.year,
    required this.month,
    required this.date,
    required this.earanings,
    required this.trip,
    required this.hrs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.circular(10),
        elevation: 5,
        child: Container(
          height: MyApp.height * .25,
          width: MyApp.width,
          padding: EdgeInsets.symmetric(horizontal: MyApp.width * .05),
          decoration: BoxDecoration(
              color: Colorsdata.white.withOpacity(.8),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      TextThemedel(
                        text: date,
                        color: Colorsdata.darkcolor,
                        fontSize: 64,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                      ),
                      TextThemedel(
                        text: day,
                        color: const Color(0xFF000000),
                        fontSize: 20,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                      ),
                      TextThemedel(
                        text: '$month  $year',
                        color: const Color(0xFFA9A9A9),
                        fontSize: 16,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  )),
              VerticalDivider(),
              Expanded(
                  flex: 4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextThemedel(
                          text: "Status",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                          fontSize: 25,
                          decoration: TextDecoration.underline,
                        ),
                        FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    TextThemedel(text: "Earnings"),
                                    TextThemedel(
                                      text: "Rs.$earanings",
                                      fontWeight: FontWeight.bold,
                                      color: Colorsdata.darkcolor,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    TextThemedel(text: "Trips"),
                                    TextThemedel(
                                      text: trip,
                                      fontWeight: FontWeight.bold,
                                      color: Colorsdata.darkcolor,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    TextThemedel(text: "Login Hours"),
                                    TextThemedel(
                                      text: "$hrs hr",
                                      fontWeight: FontWeight.bold,
                                      color: Colorsdata.darkcolor,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
