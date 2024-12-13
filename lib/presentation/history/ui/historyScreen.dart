import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/presentation/history/widgets/assigned_card/assignedcard.dart';
import 'package:auxzondeliveryapp/presentation/history/widgets/cancelled_card/cancelledcard.dart';
import 'package:auxzondeliveryapp/presentation/history/widgets/completed_card/completedcard.dart';
import 'package:auxzondeliveryapp/presentation/order_details/ui/orderdetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import '../../../common/Bottom_Navigation_Bar/ui/bottom_navigation_bar.dart';
import '../../../common/accept_bottosheet/ui/accept_bottomsheet.dart';
import '../../../common/textfont/textfont.dart';
import '../../../main.dart';

class HistoryscreenWidget extends StatelessWidget {
  const HistoryscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Historyscreen();
  }
}

class Historyscreen extends StatelessWidget {
  const Historyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Builder(builder: (context) {
          final TabController tabController = DefaultTabController.of(context)!;

          // Listen for both tap and slide changes
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              // Triggers when sliding between tabs
              print(
                  "Current history Tab Index (Slide): ${tabController.index}");
            } else {
              // Triggers when tapping on tabs
              print("Current history Tab Index (Tap): ${tabController.index}");
            }
          });

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              forceMaterialTransparency: true,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const BottomsheetWrapper(
                      pageno: 2,
                    ),
                  ));
                },
              ),
              title: const Text(
                "Histories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              centerTitle: true,
              bottom: TabBar(
                labelColor: Colorsdata.black,
                unselectedLabelColor: Colorsdata.unfocus,
                indicatorColor: Colorsdata.darkcolor,
                tabs: const [
                  Tab(text: "Assigned"),
                  Tab(text: "Completed"),
                  Tab(text: "Cancelled"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: 20,
                    itemBuilder: (context, index) => Assignedcard(
                        orderno: "#123456789",
                        items: index + 1,
                        location:
                            "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                        index: index),
                  ),
                ),
                Center(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: 20,
                    itemBuilder: (context, index) => Completedcard(
                      orderno: "#123456",
                      location:
                          "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                      function: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const OrderdetailsscreenWrapper(
                            tab: 2,
                            orderNumber: "#123456",
                            items: "2",
                            address:
                                "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                            distance: "12 km",
                            time: "25 minutes",
                          ),
                        ));
                      },
                    ),
                  ),
                ),
                Center(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    itemCount: 20,
                    itemBuilder: (context, index) => Cancelledcard(
                        oderno: "#123456",
                        items: 2,
                        function: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => OrderdetailsscreenWrapper(
                              tab: 3,
                              orderNumber: "#123456",
                              items: "2",
                              address:
                                  "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                              distance: "12 km",
                              time: "25 minutes",
                            ),
                          ));
                        }),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
