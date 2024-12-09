import 'package:auxzondeliveryapp/common/bottomsheet/ui/bottomsheet.dart';
import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/main.dart';
import 'package:flutter/material.dart';

class NotificationscreenWrapper extends StatelessWidget {
  const NotificationscreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const Notificationscreen();
  }
}

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsdata.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colorsdata.black),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const BottomsheetWrapper(pageno: 0,),
            )); // Back navigation
          },
        ),
        title: TextThemedel(
          text: "Notifications",
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colorsdata.black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: MyApp.height * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 10, // Example: Replace with dynamic count
                itemBuilder: (context, index) {
                  return NotificationTile(
                    title: "Notification ${index + 1}",
                    description:
                        "This is the description of notification ${index + 1}.",
                    time: "10:3$index AM",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
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
