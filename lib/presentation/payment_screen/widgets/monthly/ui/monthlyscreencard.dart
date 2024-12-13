import 'package:flutter/material.dart';

import '../../../../../common/color/color.dart';
import '../../../../../common/textfont/textfont.dart';
import '../../../../../main.dart';

class Monthlyscreencard extends StatelessWidget {


  final String fdate;
  final String tdate;
  final String incomers;
  final String outcomers;
  final String net;

  const Monthlyscreencard({
    super.key,
    required this.fdate,
    required this.tdate,
    required this.incomers,
    required this.outcomers,
    required this.net,
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
          title: TextThemedel(
            text: "${fdate} - ${tdate}",
            color: Colorsdata.black,
            fontWeight: FontWeight.bold,
          ),
          subtitle: TextThemedel(
            text: "Income: Rs. ${incomers} | Outcome: Rs. ${outcomers}",
            color: Colorsdata.darkunfocus,
          ),
          trailing: TextThemedel(
            text: "Net: Rs. ${net}",
            color: Colorsdata.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
