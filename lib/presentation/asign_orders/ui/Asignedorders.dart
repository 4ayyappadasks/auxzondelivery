import 'package:auxzondeliveryapp/presentation/asign_orders/widgets/assignedorderscard/ui/assignedorderscard.dart';
import 'package:flutter/material.dart';

import '../../../common/Bottom_Navigation_Bar/ui/bottom_navigation_bar.dart';
import '../../../common/color/color.dart';
import '../../../common/textfont/textfont.dart';
import '../../../main.dart';
import '../../../common/accept_bottosheet/ui/accept_bottomsheet.dart';

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
    return Scaffold(
      backgroundColor: Colorsdata.liteunfocus,
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colorsdata.black),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const BottomsheetWrapper(
                pageno: 0,
              ),
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
        itemBuilder: (context, index) => Assignedorderscard(
          orderno: 123456,
          itemsno: index+1,
          location: "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
          function: () {
                    showModalBottomSheet(
                      backgroundColor: Colorsdata.white,
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                      ),
                      builder: (context) => DeliveryDetailsBottomSheet(
                        distance: "12 km",
                        time: "25 minutes",
                        address: "123 Main Street, Springfield, IL",
                        orderNumber: "ORD12345",
                      ),
                    );
          },
        ),
      ),
    );
  }
}
