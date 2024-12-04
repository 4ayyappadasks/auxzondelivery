import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/color/color.dart';
import '../../../main.dart';
import '../bloc/payment_bloc.dart';

class PayemtscreenWrapper extends StatelessWidget {
  const PayemtscreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentBloc(),
      child: Payemtscreen(),
    );
  }
}

class Payemtscreen extends StatelessWidget {
  const Payemtscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyApp.height,
      width: MyApp.width,
      color: Colorsdata.white,
      child: Column(
        children: [
          SizedBox(
            height: MyApp.height * .05,
          ),
          BlocBuilder<PaymentBloc, PaymentState>(
            builder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colorsdata.unfocus),
                      right: BorderSide(color: Colorsdata.unfocus),
                      left: BorderSide(color: Colorsdata.unfocus),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<PaymentBloc>(context).add(Selecttype(no: 0));
                      },
                      child: Container(
                        child: Text(
                          "Daily",
                        ),
                        decoration: BoxDecoration(
                            border: state is DailyScreen
                                ? Border(
                                    bottom: BorderSide(
                                        color: Colors.green, width: 2))
                                : null),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<PaymentBloc>(context).add(Selecttype(no: 1));
                      },
                      child: Container(
                        child: Text(
                          "Weakly",
                        ),
                        decoration: BoxDecoration(
                            border: state is WeaklyScreen
                                ? Border(
                                    bottom: BorderSide(
                                        color: Colors.green, width: 2))
                                : null),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        BlocProvider.of<PaymentBloc>(context).add(Selecttype(no: 2));
                      },
                      child: Container(
                        child: Text(
                          "Monthly",
                        ),
                        decoration: BoxDecoration(
                            border: state is MonthlyScreen
                                ? Border(
                                    bottom: BorderSide(
                                        color: Colors.green, width: 2))
                                : null),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: MyApp.height*.01,),
          Card(
            color: Colorsdata.unfocus,
            child: ListTile(
              leading: Text(
                "Today : 22 may 2024",
                style: TextStyle(fontSize: 15),
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ),
          ),
          SizedBox(height: MyApp.height*.01,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: MyApp.width,
            height: MyApp.height*.15,
            decoration: BoxDecoration(
              border: Border.all(color: Colorsdata.unfocus),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Performance of Today",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Spacer(),
                    Text(
                      "See trip",
                      style:
                          TextStyle(fontSize: 15, color: Colorsdata.midcolor),
                    ),
                    Icon(Icons.arrow_right, color: Colorsdata.midcolor)
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colorsdata.unfocus),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5),
                          ),
                        ),
                        child:Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("00"),
                                Text("Trips"),
                              ],
                            ),
                      
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.symmetric(horizontal: BorderSide(color: Colorsdata.unfocus)),
                        ),
                        child:Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("00"),
                                Text("Login hours"),
                              ],
                            ),
                      
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colorsdata.unfocus),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                        ),
                        child:Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("00"),
                                Text("Touchpoints"),
                              ],
                            ),
                      
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          SizedBox(height: MyApp.height*.01,),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: MyApp.width,
              height: MyApp.height,
              decoration: BoxDecoration(
                border: Border.all(color: Colorsdata.unfocus),
              ),
              child: Center(
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key, required this.color});

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
