import 'package:auxzondeliveryapp/common/color/color.dart';
import 'package:auxzondeliveryapp/common/textfont/textfont.dart';
import 'package:auxzondeliveryapp/main.dart';
import 'package:auxzondeliveryapp/presentation/history/ui/historyScreen.dart';
import 'package:flutter/material.dart';

class ProfilescreenWrapper extends StatelessWidget {
  const ProfilescreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const Profilescreen();
  }
}

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bgimg.png"), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: MyApp.height * .09,
            ),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              elevation: 10,
              child: Container(
                height: MyApp.height * .1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colorsdata.white.withOpacity(.7)),
                child: Center(
                    child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/contacts.png"),
                  ),
                  title: TextThemedel(
                    text: "Navien Babu",
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: TextThemedel(text: "98 76 54 32 10"),
                  trailing: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: MyApp.height * .03,
                    decoration: BoxDecoration(
                        color: Colorsdata.midcolor,
                        borderRadius: BorderRadius.circular(5)),
                    child: FittedBox(
                        child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextThemedel(
                          text: "4.5",
                          color: Colorsdata.white,
                          fontSize:
                              ((MyApp.height * .005) * (MyApp.width * .003)),
                        ),
                        Icon(
                          Icons.star,
                          color: Colorsdata.white,
                          size: ((MyApp.height * .01) * (MyApp.width * .003)),
                        )
                      ],
                    )),
                  ),
                )),
              ),
            ),
            SizedBox(
              height: MyApp.height * .02,
            ),
            Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colorsdata.white.withOpacity(.9),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                        border: Border(
                            bottom: BorderSide(
                                color: Colorsdata.unfocus, width: 1))),
                    child: ListTile(
                      leading: Icon(Icons.account_circle_outlined),
                      title: TextThemedel(text: "edit profile"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_sharp)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colorsdata.white.withOpacity(.9),
                        border: Border(
                            bottom: BorderSide(
                                color: Colorsdata.unfocus, width: 1))),
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip),
                      title: TextThemedel(text: "Privacy policies"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_sharp)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colorsdata.white.withOpacity(.9),
                        border: Border(
                            bottom: BorderSide(
                                color: Colorsdata.unfocus, width: 1))),
                    child: ListTile(
                      leading: Icon(Icons.history_outlined),
                      title: TextThemedel(text: "History"),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => HistoryscreenWidget(),
                            ));
                          },
                          icon: Icon(Icons.arrow_forward_ios_sharp)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colorsdata.white.withOpacity(.9),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        )),
                    child: ListTile(
                      leading: Icon(Icons.question_mark_rounded),
                      title: TextThemedel(text: "F.A.Q"),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios_sharp)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
