import 'package:auxzondeliveryapp/common/errorwidget/errorwidget.dart';
import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/main.dart';
import 'package:auxzondeliveryapp/presentation/home_page/ui/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../presentation/payment_screen/ui/payemtscreen.dart';
import '../../../presentation/profile/ui/profilescreen.dart';
import '../../color/color.dart';
import '../bloc/bottomsheet_bloc.dart';

class BottomsheetWrapper extends StatelessWidget {
  const BottomsheetWrapper({super.key, this.pageno});

  final int? pageno;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          BottomsheetBloc()..add(SwitchScreenEvent(pageno: pageno ?? 0)),
      child: Bottomsheet(),
    );
  }
}

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorsdata.white,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<BottomsheetBloc, BottomsheetState>(
              builder: (context, state) {
                if (state is HomeScreen_State) {
                  return HomescreenWrapper();
                } else if (state is paymentScreen_State) {
                  return PayemtscreenWrapper();
                } else if (state is ProfileScreen_State) {
                  return ProfilescreenWrapper();
                } else {
                  return Errorwidgetbloc();
                }
              },
            ),
          ),
          BlocBuilder<BottomsheetBloc, BottomsheetState>(
            builder: (context, state) {
              return Material(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                color: Colorsdata.liteunfocus,
                elevation: 20,
                child: Container(
                  height: MyApp.height * .09,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colorsdata.unfocus),
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<BottomsheetBloc>(context)
                              .add(SwitchScreenEvent(pageno: 0));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            state is HomeScreen_State
                                ? Icon(
                                    Icons.emoji_food_beverage_rounded,
                                    size: 40,
                                    color: Colorsdata.maincolor,
                                  )
                                : const Icon(
                                    Icons.emoji_food_beverage_rounded,
                                    size: 30,
                                  ),
                            Flexible(
                              child:  TextThemedel(
                                fontSize: 12,
                                text: "Home",
                                color: state is HomeScreen_State
                                    ? Colorsdata.maincolor
                                    : Colorsdata.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<BottomsheetBloc>(context)
                              .add(SwitchScreenEvent(pageno: 1));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            state is paymentScreen_State
                                ? Icon(
                                    Icons.payment,
                                    size: 40,
                                    color: Colorsdata.maincolor,
                                  )
                                : const Icon(
                                    Icons.payment,
                                    size: 30,
                                  ),
                            TextThemedel(
                              fontSize: 12,
                              text: "Payment",
                              color: state is paymentScreen_State
                                  ? Colorsdata.maincolor
                                  : Colorsdata.black,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<BottomsheetBloc>(context)
                              .add(SwitchScreenEvent(pageno: 2));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            state is ProfileScreen_State
                                ?  Icon(
                                    Icons.person,
                                    size: 40,
                                    color: Colorsdata.maincolor,
                                  )
                                : const Icon(
                                    Icons.person,
                                    size: 30,
                                  ),
                             TextThemedel(text: "Profile", fontSize: 12,
                            color: state is ProfileScreen_State
                                ? Colorsdata.maincolor
                                : Colorsdata.black,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
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
