import 'package:flutter/material.dart';

import '../../../../../common/color/color.dart';
import '../../../../../common/textfont/textfont.dart';
import '../../../../../main.dart';
import '../../showbottosheet/ui/showbottomsheetss.dart';

class Ordercard extends StatelessWidget {
  final String orderno;

  final String items;

  final String location;

  final int index;

  final VoidCallback function;

  const Ordercard({
    super.key,
    required this.orderno,
    required this.items,
    required this.location,
    required this.index,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colorsdata.white.withOpacity(.9),
      elevation: 10,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: TextThemedel(
          text: "Order no : $orderno${index}",
          color: Colorsdata.black,
          fontSize: 14,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextThemedel(
              text: "${items} items",
              color: Colorsdata.darkcolor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: MyApp.height * .015,
            ),
            TextThemedel(
              text:location,
              color: Colorsdata.black,
              fontSize: 14,
            ),
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
