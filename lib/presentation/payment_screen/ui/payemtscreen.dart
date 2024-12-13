import 'package:auxzondeliveryapp/presentation/payment_screen/widgets/daily/ui/dailyscreen.dart';
import 'package:auxzondeliveryapp/presentation/payment_screen/widgets/monthly/ui/monthlyscreen.dart';
import 'package:auxzondeliveryapp/presentation/payment_screen/widgets/weekly/ui/weeklyscreen.dart';
import 'package:flutter/material.dart';
import '../../../common/color/color.dart';

class PayemtscreenWrapper extends StatelessWidget {
  const PayemtscreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Payemtscreen();
  }
}

class Payemtscreen extends StatelessWidget {
  const Payemtscreen({super.key});

  @override
  Widget build(BuildContext context) {
    List date = [
      "22/05/2022",
      "22/05/2023",
      "22/05/2024",
      "22/05/2025",
    ];
    List status = [
      true,
      false,
      true,
      true,
    ];
    List rate = [
      "22.22",
      "22.023",
      "22.4",
      "22.5",
    ];
    List time = [
      "1:00 pm",
      "2:00 am",
      "3:00 pm",
      "4:00 am",
    ];
    List orderid = [
      "#12346789",
      "#12346780",
      "#12346782",
      "#12346781",
    ];

    ///
    List wnet = [
      "100",
      "200",
      "300",
      "400",
      "500",
      "600",
      "700",
    ];
    List wincome = [
      "1000",
      "900",
      "800",
      "700",
      "600",
      "500",
      "400",
    ];
    List woutcome = [
      "900",
      "700",
      "500",
      "300",
      "100",
      "80",
      "60",
    ];
    List wdate = [
      "22/05/2022",
      "23/05/2023",
      "24/05/2024",
      "25/05/2025",
      "26/05/2025",
      "27/05/2025",
      "28/05/2025",
    ];

    ///
    List mnet = [
      "100",
      "200",
      "300",
      "400",
    ];
    List mincome = [
      "1000",
      "900",
      "800",
      "700",
    ];
    List moutcome = [
      "900",
      "700",
      "500",
      "300",
    ];
    List mfdate = [
      "22/05/2022",
      "23/05/2023",
      "24/05/2024",
      "25/05/2025",
    ];
    List mtdate = [
      "26/05/2025",
      "27/05/2025",
      "28/05/2025",
      "29/05/2025",
    ];
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context)!;
          tabController.addListener(() {
            if (!tabController.indexIsChanging) {
              print("Current Tab Index (Slide): ${tabController.index}");
            } else {
              print("Current Tab Index (Tap): ${tabController.index}");
            }
          });

          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              TabBar(
                labelColor: Colorsdata.black,
                unselectedLabelColor: Colorsdata.unfocus,
                indicatorColor: Colorsdata.darkcolor,
                tabs: const [
                  Tab(
                    text: "Daily",
                  ),
                  Tab(
                    text: "Weekly",
                  ),
                  Tab(
                    text: "Monthly",
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: TabBarView(
                    children: [
                      ///
                      Dailyscreen(
                          trips: 1,
                          loginhours: 2,
                          touchpoints: 3,
                          price: rate,
                          date: date,
                          time: time,
                          orderid: orderid,
                          status: status,
                          itemcount: date.length),

                      ///
                      Weeklyscreen(
                        trips: 2,
                        loginhours: 3,
                        touchpoints: 4,
                        incomers: wincome,
                        outcomers: woutcome,
                        date: wdate,
                        net: wnet,
                        itemcount: wdate.length,
                      ),

                      ///
                      MonthlyScreen(
                        trips: 5,
                        loginhours: 6,
                        touchpoints: 7,
                        incomers: mincome,
                        outcomers: moutcome,
                        fdate: mfdate,
                        tdate: mtdate,
                        net: mnet,
                        itemcount: mtdate.length,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
