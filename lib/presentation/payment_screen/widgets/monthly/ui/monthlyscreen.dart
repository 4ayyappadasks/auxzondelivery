import 'package:auxzondeliveryapp/presentation/payment_screen/widgets/common/performancecard.dart';
import 'package:auxzondeliveryapp/presentation/payment_screen/widgets/monthly/ui/monthlyscreencard.dart';
import 'package:flutter/material.dart';
import '../../../../../common/color/color.dart';
import '../../../../../main.dart';

class MonthlyScreen extends StatelessWidget {
  final int trips;
  final int loginhours;
  final int touchpoints;
  final List incomers;
  final List outcomers;
  final List fdate;
  final List tdate;
  final List net;
  final int? itemcount;

  const MonthlyScreen({
    super.key,
    required this.trips,
    required this.loginhours,
    required this.touchpoints,
    required this.incomers,
    required this.outcomers,
    required this.fdate,
    required this.tdate,
    required this.net,
    required this.itemcount,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: MyApp.height * .01,
        ),
        Performancecard(
          title: "Monthly Performance",
          trips: trips,
          loginhr: loginhours,
          touchpoints: touchpoints,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  itemCount: itemcount ?? 0,
                  itemBuilder: (context, index) => Monthlyscreencard(
                    fdate: fdate[index],
                    tdate: tdate[index],
                    incomers: incomers[index],
                    outcomers: outcomers[index],
                    net: net[index],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
