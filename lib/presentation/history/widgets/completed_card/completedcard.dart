import 'package:flutter/material.dart';
import '../../../../common/color/color.dart';
import '../../../../common/textfont/textfont.dart';
import '../../../../main.dart';

class Completedcard extends StatelessWidget {
  final String orderno;

  final String location;

  final VoidCallback function;

  const Completedcard({
    super.key,
    required this.orderno,
    required this.location,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFFFFFF),
      elevation: 10,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        title: TextThemedel(
          text: "Order no : $orderno",
          color: Colorsdata.black,
          fontSize: 14,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MyApp.height * .015,
            ),
            TextThemedel(
                text: location,
                color: Colorsdata.black,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                fontSize: 12),
          ],
        ),
        trailing: MaterialButton(
          onPressed: function,
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
