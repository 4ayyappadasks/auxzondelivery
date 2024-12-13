import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:flutter/material.dart';
import '../../../../../common/color/color.dart';
import '../../../../../main.dart';

class Assignedorderscard extends StatelessWidget {

  final int orderno;

  final int itemsno;

  final String location;

  final VoidCallback function;

  const Assignedorderscard({
    super.key,
    required this.orderno,
    required this.itemsno,
    required this.location,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      elevation: 10,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: TextThemedel(
          text: "Order no : #$orderno",
          color: Colorsdata.black,
          fontSize: 14,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextThemedel(
              text: "$itemsno items",
              color: Colorsdata.maincolor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: MyApp.height * .015,
            ),
            TextThemedel(
                text:location,
                color: Colorsdata.black,
                fontSize: 14),
          ],
        ),
        trailing: MaterialButton(
          onPressed: function,
          color: Colorsdata.darkcolor,
          child: TextThemedel(
            text: "Accept",
            color: Colorsdata.white,
          ),
        ),
      ),
    );
  }
}
