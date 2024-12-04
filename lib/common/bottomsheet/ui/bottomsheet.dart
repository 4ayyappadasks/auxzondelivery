import 'package:auxzondeliveryapp/main.dart';
import 'package:auxzondeliveryapp/presentation/home_page/ui/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../presentation/payment_screen/ui/payemtscreen.dart';
import '../../color/color.dart';
import '../bloc/bottomsheet_bloc.dart';

class BottomsheetWrapper extends StatelessWidget {
  const BottomsheetWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomsheetBloc(),
      child: Bottomsheet(),
    );
  }
}

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: BlocBuilder<BottomsheetBloc, BottomsheetState>(
            builder: (context, state) {
              if (state is HomeScreen_State) {
                return HomescreenWrapper();
              } else if (state is paymentScreen_State) {
                return PayemtscreenWrapper();
              } else if (state is BookingScreen_State) {
                return Widgetddd(color: Colors.blue);
              } else if (state is ProfileScreen_State) {
                return Widgetddd(color: Colors.yellow);
              } else {
                return Widgetddd(color: Colors.red);
              }
            },
          )),
          BlocBuilder<BottomsheetBloc, BottomsheetState>(
            builder: (context, state) {
              return Material(
                color: Colorsdata.white,
                elevation: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<BottomsheetBloc>(context)
                            .add(SwitchScreenEvent(pageno: 0));
                      },
                      icon: state is HomeScreen_State
                          ? Icon(
                              Icons.emoji_food_beverage_rounded,
                              size: 30,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.emoji_food_beverage_rounded,
                              size: 20,
                            ),
                    ),
                    IconButton(
                        onPressed: () {
                          BlocProvider.of<BottomsheetBloc>(context)
                              .add(SwitchScreenEvent(pageno: 1));
                        },
                        icon: state is paymentScreen_State
                            ? Icon(
                                Icons.payment,
                                size: 30,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.payment,
                                size: 20,
                              )),
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<BottomsheetBloc>(context)
                            .add(SwitchScreenEvent(pageno: 2));
                      },
                      icon: state is BookingScreen_State
                          ? Icon(
                              Icons.book,
                              size: 30,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.book,
                              size: 20,
                            ),
                    ),
                    IconButton(
                        onPressed: () {
                          BlocProvider.of<BottomsheetBloc>(context)
                              .add(SwitchScreenEvent(pageno: 3));
                        },
                        icon: state is ProfileScreen_State
                            ? Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.green,
                              )
                            : Icon(
                                Icons.person,
                                size: 20,
                              )),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class Widgetddd extends StatelessWidget {
  const Widgetddd({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyApp.height,
      width: MyApp.width,
      color: color,
    );
  }
}
