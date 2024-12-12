import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/presentation/order_details/ui/orderdetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import '../../../common/bottomsheet/ui/bottomsheet.dart';
import '../../../common/textfont/textfont.dart';
import '../../../main.dart';
import '../../home_page/widgets/showbottosheet/ui/showbottomsheetss.dart';

class HistoryscreenWidget extends StatelessWidget {
  const HistoryscreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Historyscreen();
  }
}

class Historyscreen extends StatelessWidget {
  const Historyscreen({super.key});

  void _showConfirmationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colorsdata.white,
      context: context,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextThemedel(
                text: "Confirm Order",
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colorsdata.black,
              ),
              const SizedBox(height: 16),
              MaterialButton(
                onPressed: () async {
                  String? qrCode = await SimpleBarcodeScanner.scanBarcode(
                    context,
                    isShowFlashIcon: true,
                    delayMillis: 20,
                    cameraFace: CameraFace.back,
                    scanFormat: ScanFormat.ONLY_QR_CODE,
                  );

                  if (qrCode != "-1") {
                    // Handle scanned QR code
                    Navigator.pop(context);
                    _showSnackBar(
                        context, "QR Code: $qrCode scanned successfully!");
                  }
                },
                color: Colorsdata.darkcolor,
                child: TextThemedel(
                  text: "Scan QR Code",
                  color: Colorsdata.white,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter OTP",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showSnackBar(context, "OTP confirmed successfully!");
                },
                color: Colorsdata.darkcolor,
                child: TextThemedel(
                  text: "Confirm OTP",
                  color: Colorsdata.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

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
              print("Current history Tab Index (Slide): ${tabController.index}");
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
                    builder: (context) => BottomsheetWrapper(
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
                indicatorColor: Colorsdata.midcolor,
                tabs: [
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
                    itemBuilder: (context, index) => GestureDetector(
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
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                              SizedBox(
                                height: MyApp.height * .015,
                              ),
                              TextThemedel(
                                  text:
                                      "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                                  color: Colorsdata.black,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 14),
                            ],
                          ),
                          trailing: index.isEven
                              ? MaterialButton(
                                  onPressed: () {
                                    _showConfirmationBottomSheet(context);
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
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(16)),
                                      ),
                                      builder: (context) =>
                                          DeliveryDetailsBottomSheet(
                                        distance: "12 km",
                                        // Example data
                                        time: "25 minutes",
                                        // Example data
                                        address:
                                            "123 Main Street, Springfield, IL",
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
                    ),
                  ),
                ),
                Center(
                  child: ListView.builder(
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
                            SizedBox(
                              height: MyApp.height * .015,
                            ),
                            TextThemedel(
                                text:
                                    "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                                color: Colorsdata.black,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                fontSize: 12),
                          ],
                        ),
                        trailing: MaterialButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => OrderdetailsscreenWrapper(
                                tab: 2,
                                orderNumber: "#123456$index",
                                items: "2",
                                address:
                                    "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                                distance: "12 km",
                                time: "25 minutes",
                              ),
                            ));
                          },
                          color: Colorsdata.darkcolor,
                          child: TextThemedel(
                            text: "Details",
                            color: Colorsdata.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: ListView.builder(
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
                          ],
                        ),
                        trailing: MaterialButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => OrderdetailsscreenWrapper(
                                tab: 3,
                                orderNumber: "#123456$index",
                                items: "2",
                                address:
                                    "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                                distance: "12 km",
                                time: "25 minutes",
                              ),
                            ));
                          },
                          color: Colorsdata.darkcolor,
                          child: TextThemedel(
                            text: "Details",
                            color: Colorsdata.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}