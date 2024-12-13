import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/presentation/history/ui/historyScreen.dart';
import 'package:flutter/material.dart';
import '../../../common/textfont/textfont.dart';

class OrderdetailsscreenWrapper extends StatelessWidget {
  final String orderNumber;
  final int tab;
  final String items;
  final String address;
  final String distance;
  final String time;

  const OrderdetailsscreenWrapper({
    super.key,
    required this.orderNumber,
    required this.tab,
    required this.items,
    required this.address,
    required this.distance,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Orderdetailsscreen(
      tab: tab,
      orderNumber: orderNumber,
      items: items,
      address: address,
      distance: distance,
      time: time,
    );
  }
}

class Orderdetailsscreen extends StatelessWidget {
  final String orderNumber;
  final String items;
  final String address;
  final int tab;
  final String distance;
  final String time;

  const Orderdetailsscreen({
    super.key,
    required this.orderNumber,
    required this.items,
    required this.tab,
    required this.address,
    required this.distance,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorsdata.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colorsdata.black),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => HistoryscreenWidget(),
            ));
          },
        ),
        title: TextThemedel(
          text: tab == 1
              ? "Assigned Orders Details"
              : tab == 2
                  ? "Completed Orders Details"
                  : tab == 3
                      ? "Canceled Orders Details"
                      : "Orders Details",
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colorsdata.black,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colorsdata.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextThemedel(
              text: "Order Number: $orderNumber",
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colorsdata.black,
            ),
            const SizedBox(height: 8),
            TextThemedel(
              text: "Items: $items",
              fontSize: 16,
              color: Colorsdata.maincolor,
            ),
            const SizedBox(height: 8),
            TextThemedel(
              text: "Delivery Address:",
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colorsdata.black,
            ),
            const SizedBox(height: 4),
            TextThemedel(
              text: address,
              fontSize: 14,
              color: Colorsdata.black,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextThemedel(
                  text: "Distance: $distance",
                  fontSize: 16,
                  color: Colorsdata.black,
                ),
               tab==1?TextThemedel(
                  text: "Estimated Time: $time",
                  fontSize: 16,
                  color: Colorsdata.black,
                ):TextThemedel(text: ""),
              ],
            ),
            const SizedBox(height: 16),
            tab==1
                ? MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HistoryscreenWidget(),
                ));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text("Task for Order $orderNumber Completed!")),
                );
              },
              color: Colorsdata.darkcolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextThemedel(
                text: "Mark as Completed",
                color: Colorsdata.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
                :tab==2?
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextThemedel(text: "Feedback",fontWeight: FontWeight.bold,),
          TextThemedel(text: "Perfect timing",),
        ],
      )
        :Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextThemedel(text: "Reason",fontWeight: FontWeight.bold,),
                TextThemedel(text: "Time was to long",),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
