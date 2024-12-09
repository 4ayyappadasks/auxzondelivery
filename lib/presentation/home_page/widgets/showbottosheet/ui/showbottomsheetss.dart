// import 'package:auxzondeliveryapp/common/color/color.dart';
// import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
// import 'package:slider_button/slider_button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../asign_orders/bloc/homescreen_bloc.dart';
//
//  showDeliveryDetailsBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//     ),
//     builder: (context) {
//       return Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Container(
//                 width: 50,
//                 height: 5,
//                 decoration: BoxDecoration(
//                   color: Colors.grey[300],
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             TextThemedel(
//               text: "Delivery Details",
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Colorsdata.black,
//             ),
//             const SizedBox(height: 16),
//             _detailRow("Order Number:", "#12345"),
//             const SizedBox(height: 8),
//             _detailRow("Address:", "123, ABC Street, City, Country"),
//             const SizedBox(height: 8),
//             _detailRow("Total Distance:", "15 km"),
//             const SizedBox(height: 8),
//             _detailRow("Estimated Time:", "30 mins"),
//             const SizedBox(height: 24),
//             BlocBuilder<HomescreenBloc, HomescreenState>(
//               builder: (context, state) {
//                 return SliderButton(
//                   action:() {
//                     context.read<HomescreenBloc>().add(TriggerSlideevent());
//                   },
//                   label: const Text("Slide to Accept"),
//                   icon: const Icon(Icons.delivery_dining),
//                   backgroundColor: Colorsdata.litecolor,
//                   baseColor: Colorsdata.darkcolor,
//                 );
//               },
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
//
// Widget _detailRow(String title, String value) {
//   return Row(
//     children: [
//       TextThemedel(
//         text: title,
//         fontWeight: FontWeight.bold,
//         fontSize: 14,
//         color: Colorsdata.darkunfocus,
//       ),
//       const SizedBox(width: 8),
//       Expanded(
//         child: TextThemedel(
//           text: value,
//           fontSize: 14,
//           color: Colorsdata.black,
//         ),
//       ),
//     ],
//   );
// }


import 'package:flutter/material.dart';
import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:slide_to_act/slide_to_act.dart';

class DeliveryDetailsBottomSheet extends StatelessWidget {
  const DeliveryDetailsBottomSheet({
    super.key,
    required this.distance,
    required this.time,
    required this.address,
    required this.orderNumber,
  });

  final String distance;
  final String time;
  final String address;
  final String orderNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: TextThemedel(
              text: "Delivery Details",
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colorsdata.black,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextThemedel(
                text: "Distance:",
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              TextThemedel(
                text: distance,
                fontSize: 16,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextThemedel(
                text: "Estimated Time:",
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              TextThemedel(
                text: time,
                fontSize: 16,
              ),
            ],
          ),
          const SizedBox(height: 8),
          const TextThemedel(
            text: "Order Number:",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          TextThemedel(
            text: orderNumber,
            fontSize: 16,
            color: Colorsdata.darkunfocus,
          ),
          const SizedBox(height: 8),
          const TextThemedel(
            text: "Delivery Address:",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          TextThemedel(
            text: address,
            fontSize: 16,
            color: Colorsdata.darkunfocus,
          ),
          const SizedBox(height: 24),
          SlideAction(
            text: "Slide to Accept",
            textColor: Colorsdata.black,
            innerColor: Colorsdata.unfocus,
            outerColor: Colorsdata.white,
            sliderButtonIcon: Icon(Icons.check, color: Colorsdata.midcolor),
            onSubmit: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colorsdata.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: TextThemedel(
                text: "Cancel",
                color: Colorsdata.error,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

