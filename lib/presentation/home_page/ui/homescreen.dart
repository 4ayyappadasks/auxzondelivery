import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/presentation/home_page/bloc/homescreen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/textfont/textfont.dart';
import '../../../main.dart';

class HomescreenWrapper extends StatelessWidget {
  const HomescreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomescreenBloc(),
      child: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  // String _current = "online";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      body: BlocConsumer<HomescreenBloc, HomescreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          // Determine the current status based on the state.
          String currentStatus = "online"; // Default to online.
          if (state is Homescreenstatusonline) {
            currentStatus = state.status;
          } else if (state is Homescreenstsusoffline) {
            currentStatus = state.status;
          }
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: currentStatus == "online"
                        ? AssetImage("assets/bgimg.png")
                        : AssetImage("assets/bgimg2.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                const SizedBox(height: 20),

                /// top widget
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                          height: MyApp.height * .05,
                          width: MyApp.width * .25,
                          child: AnimatedToggleSwitch.dual(
                              borderWidth: 1,
                              style: ToggleStyle(
                                  indicatorColor: const Color(0xFFFFFFFF),
                                  backgroundColor: currentStatus == "online"
                                      ? Colorsdata.midcolor
                                      : Color(0xFFD9D9D9),
                                  borderColor: const Color(0xFFCCCCCC)),
                              current: currentStatus == "online",
                              first: false,
                              // Represents "offline".
                              second: true,
                              // Represents "online".
                              onChanged: (value) {
                                // Dispatch the toggle event with the new status.
                                String newStatus = value ? "online" : "offline";
                                context
                                    .read<HomescreenBloc>()
                                    .add(togglestatus(status: newStatus));
                              },
                              textBuilder: (value) => value
                                  ? const TextThemedel(
                                      text: "Online",
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.bold,
                                    )
                                  : TextThemedel(
                                      text: "Offline",
                                      color: Color(0xFF8C8C8C),
                                      fontWeight: FontWeight.bold,
                                    )),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Badge(
                              label: Text("5"),
                              child: Icon(Icons.notifications))),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.help_outline))
                    ],
                  ),
                ),

                /// user details
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 10,
                    child: Container(
                      height: MyApp.height * .25,
                      width: MyApp.width,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextThemedel(
                                text: '14',
                                color: Colorsdata.darkcolor,
                                fontSize: 64,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.bold,
                              ),
                              TextThemedel(
                                text: 'TUESDAY',
                                color: Color(0xFF000000),
                                fontSize: 24,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          TextThemedel(
                            text: 'FEB 2023',
                            color: Color(0xFFA9A9A9),
                            fontSize: 16,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                          ),
                          VerticalDivider(),
                          Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextThemedel(
                                text: "Status",
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF000000),
                                decoration: TextDecoration.underline,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        TextThemedel(text: "Earnings"),
                                        TextThemedel(
                                          text: "Rs.200",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colorsdata.darkcolor,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        TextThemedel(text: "Trips"),
                                        TextThemedel(
                                          text: "12",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colorsdata.darkcolor,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        TextThemedel(text: "Login Hours"),
                                        TextThemedel(
                                          text: "4 hr",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colorsdata.darkcolor,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                /// title
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextThemedel(
                        text: "Recent Orders",
                        color: Color(0xFF000000),
                        fontSize: 15,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const TextThemedel(
                            text: "See All",
                            color: Color(0xFF000000),
                            fontSize: 15,
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),

                /// builder
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: 8,
                    itemBuilder: (context, index) => Card(
                      color: const Color(0xFFFFFFFF),
                      elevation: 10,
                      child: ListTile(
                        title: TextThemedel(
                          text: "Order no : #123456$index",
                          color: const Color(0xFF000000),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        subtitle: TextThemedel(
                          text: "Location details",
                          color: Colorsdata.midcolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                        trailing: TextThemedel(
                          text: "${index + 2} itmes",
                          color: Colorsdata.darkcolor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
