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
            sliderButtonIcon: Icon(Icons.check, color: Colorsdata.maincolor),
            onSubmit: () {
              Navigator.pop(context);
            },
            sliderRotate: false,
            submittedIcon: Icon(Icons.check,color: Colorsdata.maincolor),
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

