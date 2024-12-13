import 'package:auxzondeliveryapp/presentation/payment_screen/widgets/common/performancecard.dart';
import 'package:auxzondeliveryapp/presentation/payment_screen/widgets/daily/ui/dailyscreencard.dart';
import 'package:flutter/material.dart';
import '../../../../../common/color/color.dart';
import '../../../../../common/textfont/textfont.dart';
import '../../../../../main.dart';

class Dailyscreen extends StatelessWidget {
  final int trips;

  final int loginhours;

  final int touchpoints;

  final List price;

  final List date;

  final List time;

  final List orderid;

  final List status;

  final int? itemcount;

  const Dailyscreen({
    super.key,
    required this.trips,
    required this.loginhours,
    required this.touchpoints,
    required this.price,
    required this.date,
    required this.time,
    required this.orderid,
    required this.status,
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
            title: "Daily Performance",
            trips: trips,
            loginhr: loginhours,
            touchpoints: touchpoints),
        Expanded(
          child: Container(
            width: MyApp.width,
            height: MyApp.height,
            decoration: BoxDecoration(
              color: Colorsdata.white,
            ),
            child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                itemCount: itemcount ?? 0,
                itemBuilder: (context, index) => Dailyscreencard(
                      status: status[index],
                      price: price[index],
                      date: date[index],
                      time: time[index],
                      orderid: orderid[index],
                    )),
          ),
        )
      ],
    ));
  }
}
