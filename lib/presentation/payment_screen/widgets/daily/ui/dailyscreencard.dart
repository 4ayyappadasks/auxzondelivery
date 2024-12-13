import 'package:flutter/material.dart';

import '../../../../../common/color/color.dart';
import '../../../../../common/textfont/textfont.dart';
import '../../../../../main.dart';

class Dailyscreencard extends StatelessWidget {
  final bool status;

  final String price;

  final String date;

  final String time;

  final String orderid;

  const Dailyscreencard({
    super.key,
    required this.status,
    required this.price,
    required this.date,
    required this.time,
    required this.orderid,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MyApp.height * .005),
      child: Container(
        decoration: BoxDecoration(
          color: Colorsdata.liteunfocus,
          borderRadius: BorderRadius.circular(5),
          border: Border(bottom: BorderSide(color: Colorsdata.unfocus)),
        ),
        child: ListTile(
          title: Row(
            children: [
              Icon(
                status? Icons.arrow_downward : Icons.arrow_upward,
                color: status? Colorsdata.error : Colorsdata.maincolor,
              ),
              SizedBox(width: 10),
              TextThemedel(
                text: status
                    ? "- Rs.${price}"
                    : "+ Rs.${price}",
                color: status? Colorsdata.error : Colorsdata.maincolor,
                fontWeight: FontWeight.w800,
              ),
            ],
          ),
          subtitle: Text("Date: ${date}"),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextThemedel(text: "${time}"),
              TextThemedel(text: "Order ID: ${orderid}"),
            ],
          ),
        ),
      ),
    );
  }
}
