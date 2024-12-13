import 'package:auxzondeliveryapp/common/complete_task_bottomsheet/ui/complete_task_bottomsheet.dart';
import 'package:flutter/material.dart';
import '../../../../common/color/color.dart';
import '../../../../common/textfont/textfont.dart';
import '../../../../main.dart';
import '../../../../common/accept_bottosheet/ui/accept_bottomsheet.dart';
import '../../../order_details/ui/orderdetailsscreen.dart';

class Assignedcard extends StatelessWidget {
  final String orderno;

  final int items;

  final String location;

  final int index;

  const Assignedcard({
    super.key,
    required this.orderno,
    required this.items,
    required this.location,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => OrderdetailsscreenWrapper(
            tab: 1,
            orderNumber: "#123456$index",
            items: "2",
            address:
            "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
            distance: "12 km",
            time: "25 minutes",
          ),
        ));
      },
      child: Card(
        color: const Color(0xFFFFFFFF),
        elevation: 10,
        child: ListTile(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          title: TextThemedel(
            text: "Order no : $orderno",
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
              SizedBox(
                height: MyApp.height * .015,
              ),
              TextThemedel(
                  text:location,
                  color: Colorsdata.black,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14),
            ],
          ),
          trailing: index.isEven
              ? MaterialButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colorsdata.white,
                context: context,
                enableDrag: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
                ),
                builder: (context) {
                  return const CompleteTaskBottomsheet();
                },
              );
            },
            color: Colorsdata.darkcolor,
            child: TextThemedel(
              text: "Complete Task",
              color: Colorsdata.white,
            ),
          )
              : MaterialButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colorsdata.white,
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (context) => const DeliveryDetailsBottomSheet(
                  distance: "12 km",
                  // Example data
                  time: "25 minutes",
                  // Example data
                  address: "123 Main Street, Springfield, IL",
                  // Example data
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
    );
  }
}
