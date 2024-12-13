import 'package:flutter/material.dart';
import '../../../../common/color/color.dart';
import '../../../../common/textfont/textfont.dart';
import '../../../order_details/ui/orderdetailsscreen.dart';

class Cancelledcard extends StatelessWidget {
  final String oderno;

  final VoidCallback function;

  final int items;

  const Cancelledcard({
    super.key,
    required this.oderno,
    required this.items,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      elevation: 10,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: TextThemedel(
          text: "Order no : $oderno",
          color: Colorsdata.black,
          fontSize: 14,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextThemedel(
              text: "$items items",
              color: Colorsdata.maincolor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        trailing: MaterialButton(
          onPressed:function,
          color: Colorsdata.darkcolor,
          child: TextThemedel(
            text: "Details",
            color: Colorsdata.white,
          ),
        ),
      ),
    );
  }
}
