import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/color/color.dart';
import '../../../main.dart';
import '../bloc/payment_bloc.dart';

class PayemtscreenWrapper extends StatelessWidget {
  const PayemtscreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentBloc(),
      child: Payemtscreen(),
    );
  }
}

class Payemtscreen extends StatelessWidget {
  const Payemtscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyApp.height,
      width: MyApp.width,
      color: Colorsdata.white,
      child: Column(
        children: [
          SizedBox(
            height: MyApp.height * .05,
          ),
          BlocBuilder<PaymentBloc, PaymentState>(
            builder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colorsdata.unfocus),
                  right: BorderSide(color: Colorsdata.unfocus),
                  left: BorderSide(color: Colorsdata.unfocus),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<PaymentBloc>(context)
                            .add(Selecttype(no: 0));
                      },
                      child: Container(
                        child: Text(
                          "Daily",
                        ),
                        decoration: BoxDecoration(
                            border: state is DailyScreen
                                ? Border(
                                    bottom: BorderSide(
                                        color: Colors.green, width: 2))
                                : null),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<PaymentBloc>(context)
                            .add(Selecttype(no: 1));
                      },
                      child: Container(
                        child: Text(
                          "Weakly",
                        ),
                        decoration: BoxDecoration(
                            border: state is WeaklyScreen
                                ? Border(
                                    bottom: BorderSide(
                                        color: Colors.green, width: 2))
                                : null),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<PaymentBloc>(context)
                            .add(Selecttype(no: 2));
                      },
                      child: Container(
                        child: Text(
                          "Monthly",
                        ),
                        decoration: BoxDecoration(
                            border: state is MonthlyScreen
                                ? Border(
                                    bottom: BorderSide(
                                        color: Colors.green, width: 2))
                                : null),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          BlocBuilder<PaymentBloc, PaymentState>(
            builder: (context, state) {
              if (state is DailyScreen) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: MyApp.width,
                  height: MyApp.height * .15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colorsdata.unfocus),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Performance of Today",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Spacer(),
                          Text(
                            "See trip",
                            style: TextStyle(
                                fontSize: 15, color: Colorsdata.midcolor),
                          ),
                          Icon(Icons.arrow_right, color: Colorsdata.midcolor)
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colorsdata.unfocus),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Trips"),
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
                                        BorderSide(color: Colorsdata.unfocus)),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Login hours"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colorsdata.unfocus),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Touchpoints"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                );
              } else if (state is WeaklyScreen) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: MyApp.width,
                  height: MyApp.height * .15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colorsdata.unfocus),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Weakly Performance",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Spacer(),
                          Text(
                            "See trip",
                            style: TextStyle(
                                fontSize: 15, color: Colorsdata.midcolor),
                          ),
                          Icon(Icons.arrow_right, color: Colorsdata.midcolor)
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colorsdata.unfocus),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Trips"),
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
                                        BorderSide(color: Colorsdata.unfocus)),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Login hours"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colorsdata.unfocus),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Touchpoints"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                );
              } else if (state is MonthlyScreen) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: MyApp.width,
                  height: MyApp.height * .15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colorsdata.unfocus),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Monthly Performance",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Spacer(),
                          Text(
                            "See trip",
                            style: TextStyle(
                                fontSize: 15, color: Colorsdata.midcolor),
                          ),
                          Icon(Icons.arrow_right, color: Colorsdata.midcolor)
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colorsdata.unfocus),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Trips"),
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
                                        BorderSide(color: Colorsdata.unfocus)),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Login hours"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colorsdata.unfocus),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("00"),
                                  Text("Touchpoints"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                );
              } else {
                return Center(
                  child: TextThemedel(text: "error in network"),
                );
              }
            },
          ),
      BlocBuilder<PaymentBloc, PaymentState>(
        builder: (context, state) {
          if (state is DailyScreen) {
            return Expanded(
              child: Container(
                width: MyApp.width,
                height: MyApp.height,
                decoration: BoxDecoration(
                  border: Border.all(color: Colorsdata.unfocus),
                ),
                child: Center(
                  child: Material(
                    color: Colorsdata.white,
                    elevation: 10,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      itemCount: 9,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: Colorsdata.white,
                          border: Border(bottom: BorderSide(color: Colorsdata.unfocus)),
                        ),
                        child: ListTile(
                          title: Row(
                            children: [
                              Icon(
                                index.isEven ? Icons.arrow_downward : Icons.arrow_upward,
                                color: index.isEven ? Colorsdata.error : Colorsdata.midcolor,
                              ),
                              SizedBox(width: 10),
                              TextThemedel(
                                text: index.isEven ? "- Rs.200" : "+ Rs.300",
                                color: index.isEven ? Colorsdata.error : Colorsdata.midcolor,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                          subtitle: Text("Date: 22/05/2024"),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextThemedel(text: "9:55 pm"),
                              TextThemedel(text: "Order ID: #2200113${index + 1}"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else if (state is WeaklyScreen) {
            return Expanded(
              child: Container(
                width: MyApp.width,
                height: MyApp.height,
                decoration: BoxDecoration(
                  border: Border.all(color: Colorsdata.unfocus),
                ),
                child: Center(
                  child: Material(
                    color: Colorsdata.white,
                    elevation: 10,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      itemCount: 7,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: Colorsdata.white,
                          border: Border(bottom: BorderSide(color: Colorsdata.unfocus)),
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
                            text: "Net: Rs. ${index.isEven ? 300 : 200}",
                            color: Colorsdata.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else if (state is MonthlyScreen) {
            return Expanded(
              child: Container(
                width: MyApp.width,
                height: MyApp.height,
                decoration: BoxDecoration(
                  border: Border.all(color: Colorsdata.unfocus),
                ),
                child: Center(
                  child: Material(
                    color: Colorsdata.white,
                    elevation: 10,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      itemCount: 4, // Assume 4 weeks in a month
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: Colorsdata.white,
                          border: Border(bottom: BorderSide(color: Colorsdata.unfocus)),
                        ),
                        child: ListTile(
                          title: TextThemedel(
                            text: "Week ${index + 1}",
                            color: Colorsdata.black,
                            fontWeight: FontWeight.bold,
                          ),
                          subtitle: TextThemedel(
                            text: "Income: Rs. ${3000 + index * 500} | Outcome: Rs. ${2000 + index * 400}",
                            color: Colorsdata.darkunfocus,
                          ),
                          trailing: TextThemedel(
                            text: "Net: Rs. ${1000 + index * 100}",
                            color: Colorsdata.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: Center(
                child: TextThemedel(
                  text: "Error: Unable to load data",
                  color: Colorsdata.error,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }
        },
      ),
      ],
      ),
    );
  }
}
