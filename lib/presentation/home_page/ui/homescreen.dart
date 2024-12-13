import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/presentation/asign_orders/ui/Asignedorders.dart';
import 'package:auxzondeliveryapp/presentation/home_page/bloc/homescreen_bloc.dart';
import 'package:auxzondeliveryapp/presentation/home_page/widgets/ordercard/ui/ordercard.dart';
import 'package:auxzondeliveryapp/presentation/home_page/widgets/userdetails/ui/userdetails.dart';
import 'package:auxzondeliveryapp/presentation/notification/ui/notificationscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../common/accept_bottosheet/ui/accept_bottomsheet.dart';
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
              Userdetailscard(
                  day: "TUESDAY",
                  year: "2023",
                  month: "FEB",
                  date: "14",
                  earanings: "200",
                  trip: "12",
                  hrs: "3"),

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
                  itemBuilder: (context, index) => Ordercard(
                      orderno: "#123456",
                      items: "2",
                      location: "No. 46/2978, Second Floor Third Avenue, Sobha Road, Vennala, Kochi, Kerala 682028, India",
                      index: index,
                      function: () {
                        showModalBottomSheet(
                          backgroundColor: Colorsdata.white,
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
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
                      },),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
