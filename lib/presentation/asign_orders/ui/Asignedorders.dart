import 'package:flutter/material.dart';

import '../../../common/bottomsheet/ui/bottomsheet.dart';
import '../../../common/color/color.dart';
import '../../../common/textfont/textfont.dart';
import '../../../main.dart';
import '../../home_page/widgets/showbottosheet/ui/showbottomsheetss.dart';

class AsignedordersWrapper extends StatelessWidget {
  const AsignedordersWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const Asignedorders();
  }
}

class Asignedorders extends StatelessWidget {
  const Asignedorders({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colorsdata.liteunfocus,
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
          text: "Assigned Orders",
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colorsdata.black,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemCount: 20,
        itemBuilder: (context, index) => Card(
          color: const Color(0xFFFFFFFF),
          elevation: 10,
          child: ListTile(
            contentPadding:
            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            title: TextThemedel(
              text: "Order no : #123456$index",
              color: Colorsdata.black,
              fontSize: 14,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextThemedel(
                  text: "${index + 2} items",
                  color: Colorsdata.midcolor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: MyApp.height*.015,),
                TextThemedel(
                  text:
                  "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                  color: Colorsdata.black,
                  fontSize: 14
                ),
              ],
            ),
            trailing: MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colorsdata.white,
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  ),
                  builder: (context) => DeliveryDetailsBottomSheet(
                    distance: "12 km", // Example data
                    time: "25 minutes", // Example data
                    address: "123 Main Street, Springfield, IL", // Example data
                    orderNumber: "ORD12345", // Example data
                  ),
                );
              },
              color: Colorsdata.darkcolor,
              child: TextThemedel(
                text: "Accept",
                color: Colorsdata.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
