import 'package:auxzondeliveryapp/common/Bottom_Navigation_Bar/ui/bottom_navigation_bar.dart';
import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/main.dart';
import 'package:flutter/material.dart';

import '../widgets/notificationcard/Notificationcard.dart';

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
                  return Notificationcard(
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
