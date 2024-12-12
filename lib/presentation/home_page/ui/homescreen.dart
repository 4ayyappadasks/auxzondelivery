import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/presentation/asign_orders/ui/Asignedorders.dart';
import 'package:auxzondeliveryapp/presentation/home_page/bloc/homescreen_bloc.dart';
import 'package:auxzondeliveryapp/presentation/notification/ui/notificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/textfont/textfont.dart';
import '../../../main.dart';
import '../widgets/showbottosheet/ui/showbottomsheetss.dart';

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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomescreenBloc, HomescreenState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        String currentStatus = "online";
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
                  fit: BoxFit.cover)
          ),
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
                        height: MyApp.height * .04,
                        width: MyApp.width * .25,
                        child: AnimatedToggleSwitch.dual(
                          indicatorSize: Size.fromRadius(
                              (MyApp.height * .007) * (MyApp.width * .0065)),
                          borderWidth: 1,
                          style: ToggleStyle(
                            indicatorColor: Colorsdata.white,
                            indicatorBorder: Border.all(
                              color: currentStatus == "online"
                                  ? Colorsdata.darkcolor
                                  : Colorsdata.unfocus,
                              width: 2,
                            ),
                            backgroundColor: currentStatus == "online"
                                ? Colorsdata.ddarkcolor
                                : Colorsdata.unfocus,
                            borderColor: currentStatus == "online"
                                ? Colorsdata.white
                                : Colorsdata.unfocus,
                          ),
                          current: currentStatus == "online",
                          first: false,
                          second: true,
                          onChanged: (value) {
                            String newStatus = value ? "online" : "offline";
                            context
                                .read<HomescreenBloc>()
                                .add(togglestatus(status: newStatus));
                          },
                          textBuilder: (value) => value
                              ? TextThemedel(
                                  text: "Online",
                                  color: Colorsdata.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                )
                              : TextThemedel(
                                  text: "Offline",
                                  color: Colorsdata.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => NotificationscreenWrapper(),
                          ));
                        },
                        icon: const Badge(
                            label: Text("5"),
                            child: Icon(Icons.notifications))),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.help_outline))
                  ],
                ),
              ),

              /// user details
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  color: Colors.white.withOpacity(.5),
                  borderRadius: BorderRadius.circular(10),
                  elevation: 5,
                  child: Container(
                    height: MyApp.height * .25,
                    width: MyApp.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: MyApp.width * .05),
                    decoration: BoxDecoration(
                        color: Colorsdata.white.withOpacity(.8),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Column(
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
                                  fontSize: 20,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                ),
                                TextThemedel(
                                  text: 'FEB 2023',
                                  color: Color(0xFFA9A9A9),
                                  fontSize: 16,
                                  textAlign: TextAlign.center,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            )),
                        VerticalDivider(),
                        Expanded(
                            flex: 4,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextThemedel(
                                    text: "Status",
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF000000),
                                    fontSize: 25,
                                    decoration: TextDecoration.underline,
                                  ),
                                  FittedBox(
                                    child: Row(
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
                                                fontWeight: FontWeight.bold,
                                                color: Colorsdata.darkcolor,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ]))
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
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => AsignedordersWrapper(),
                          ));
                        },
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
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(8),
                  itemCount: 8,
                  itemBuilder: (context, index) => Card(
                    color: const Color(0xFFFFFFFF).withOpacity(.9),
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
                            color: Colorsdata.darkcolor,
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
                            fontSize: 14,
                          ),
                        ],
                      ),
                      trailing: MaterialButton(
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colorsdata.white,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16)),
                            ),
                            builder: (context) => DeliveryDetailsBottomSheet(
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
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
