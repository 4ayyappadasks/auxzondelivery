import 'package:flutter/material.dart';

import '../../../../common/color/color.dart';
import '../../../../common/textfont/textfont.dart';

class Notificationcard extends StatelessWidget {
  const Notificationcard({
    super.key,
    required this.title,
    required this.description,
    required this.time,
  });

  final String title;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colorsdata.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colorsdata.midcolor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.notifications,
                color: Colorsdata.midcolor,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextThemedel(
                    text: title,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colorsdata.black,
                  ),
                  const SizedBox(height: 8),
                  TextThemedel(
                    text: description,
                    fontSize: 14,
                    color: Colorsdata.darkunfocus,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            TextThemedel(
              text: time,
              fontSize: 12,
              color: Colorsdata.darkunfocus,
            ),
          ],
        ),
      ),
    );
  }
}
